

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7", "note7"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
        var selectedSound : String = soundArray[sender.tag];
        print(selectedSound)
        playSound(selectedSoundFileName : selectedSound)
        
        
    }
    func playSound(selectedSoundFileName : String){
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }
        catch{
            print(error)
        }
        audioPlayer.play()
        
    }
    
  

}

