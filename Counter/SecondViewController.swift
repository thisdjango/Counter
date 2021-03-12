//
//  SecondViewController.swift
//  Counter
//
//  Created by thisdjango on 06.03.2021.
//

import UIKit

class SecondViewController: UIViewController {

    private var loginTextField: UITextField = {
        let textField = UITextField()
        textField.tag = 9
        textField.placeholder = "Your login"
        textField.backgroundColor = .cyan
        return textField
    }()
    
    private var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.tag = 10
        textField.isSecureTextEntry = true
        return textField
    }()
    private var authButton = UIButton()
    
    private var login: String? = ""
    private var password: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTextField.delegate = self
        passwordTextField.delegate = self
        
        authButton.addTarget(self, action: #selector(authAction), for: .touchUpInside)
    }
    
    @objc func authAction() {
        let alert = UIAlertController(title: "SAVED", message: "Thank you for your data", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { act in
            alert.dismiss(animated: true, completion: nil)
        }))
    }

}

extension SecondViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        view.endEditing(true)
        if textField.tag == 9 {
            login = textField.text
        }
        if textField.tag == 10 {
            password = textField.text
        }
    }
}
