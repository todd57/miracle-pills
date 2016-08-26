//
//  ViewController.swift
//  MiraclePill
//
//  Created by Todd Schwartz on 8/18/16.
//  Copyright © 2016 Todd Schwartz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Alaska", "Alabama", "Arkansas", "California", "Texas", "Tennesee", "Washington", "Wyoming"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
	        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
    }
    
}

