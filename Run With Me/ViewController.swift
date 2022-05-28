//
//  ViewController.swift
//  Run With Me
//
//  Created by Viviana Marcela Cruz Vega on 24/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnLogIn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColorFromHex(rgbValue: 0xFFE9D4,alpha: 1)
        //#FFE9D4
        // Do any additional setup after loading the view.
        btnLogIn.backgroundColor = UIColorFromHex(rgbValue: 0x59F3FE, alpha :1)
        btnLogIn.layer.cornerRadius = 15
        btnLogIn.titleLabel?.font = UIFont(name: "Nunito", size: 14)
        view.addSubview(btnLogIn)
    }
    
    
    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }


}

