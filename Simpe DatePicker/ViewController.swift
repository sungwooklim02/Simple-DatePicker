//
//  ViewController.swift
//  Simpe DatePicker
//
//  Created by amadeus on 16/04/2019.
//  Copyright © 2019 DIT Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UI의 지역화(locatization)
        let locale = Locale(identifier: "ko_KO")
        myDatePicker.locale = locale
        
        // DatePicker 모드 설정
        myDatePicker.datePickerMode = UIDatePicker.Mode.date
        
        // label 값 초기 설정
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm EEE a"
        let formattedDate = format.string(from: date)
        //print(formattedDate)
        outLabel.text = formattedDate
    }

    @IBAction func changeDatePicker(_ sender: Any) {
        let selectedData = myDatePicker.date
        print(selectedData)
        
        // Date 형을 문자형으로 변환
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        outLabel.text = formatter.string(from: selectedData)
    }
}

