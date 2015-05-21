import Foundation

class Employee : NSObject {
    var name: NSString? = "New Employee"
    var raise: Float = 0.05

    func validateRaise(raiseNumberPointer: AutoreleasingUnsafeMutablePointer<NSNumber?>, error outError: NSErrorPointer) -> Bool {
        let raiseNumber = raiseNumberPointer.memory
        if raiseNumber == nil {
            let domain = "UserInputValidationErrorDomain"
            let code = 0
            let userInfo = [NSLocalizedDescriptionKey : "An employee's raise must be a number."]
            outError.memory = NSError(domain: domain, code: code, userInfo: userInfo)
            return false
        } else {
            return true
        }
    }
    
}