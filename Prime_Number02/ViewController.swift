import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var Lable: UILabel!
    @IBOutlet weak var text: UITextField!

    
    var isPrime = true
    
    @IBAction func Check(_ sender: Any) {
        let Number = Int(text.text!)
        var isPrime = true
        if Number! == 1 {
            isPrime = false
        }
        
    if Number != 1 && Number != 2 {
        for i in 2 ..< Number! {
            if Number! % i == 0 {
                isPrime = false
      
                }
            }
        }
        
        if isPrime == true {
            Lable.text = "Prime Number"
        } else {
            Lable.text = "Not Prime Number"
        }
        
        }
    
    @IBAction func Reset(_ sender: Any) {
        text.text = ""
        text.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.delegate = self
        
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        text.resignFirstResponder()
        return true
    }

}


