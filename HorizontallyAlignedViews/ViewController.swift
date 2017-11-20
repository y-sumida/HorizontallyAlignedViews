//
//  ViewController.swift
//  HorizontallyAlignedViews
//
//  Created by Yuki Sumida on 2017/11/20.
//  Copyright © 2017年 Yuki Sumida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!

    private var price = 0 {
        didSet {
            label2.text = "\(price)JPY"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = "The quick brown fox jumps over the lazy dog."
        price = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func plus(_ sender: Any) {
        price += 100
        self.label2.layoutIfNeeded()
    }

    @IBAction func clear(_ sender: Any) {
        price = 0
    }
    
}

