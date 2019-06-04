//
//  InterfaceController.swift
//  WatchBattery WatchKit Extension
//
//  Created by Tommy Ryanto on 02/06/19.
//  Copyright © 2019 Tommy Ryanto. All rights reserved.
//

import WatchKit
import Foundation
import UIKit

class InterfaceController: WKInterfaceController {

    @IBAction func updateButton() { WKInterfaceDevice.current().isBatteryMonitoringEnabled = true
        let watchBatteryPercent = WKInterfaceDevice.current().batteryLevel
        watchBattery.setText("Watch: \(watchBatteryPercent)")
        //let iPhoneBattery = UIDevice.current
    }
    @IBOutlet weak var iPhoneBattery: WKInterfaceLabel!
    @IBOutlet weak var watchBattery: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
