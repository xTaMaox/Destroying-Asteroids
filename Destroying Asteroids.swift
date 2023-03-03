class Solution {
    func asteroidsDestroyed(_ mass: Int, _ asteroids: [Int]) -> Bool {
        var sortedAsteroids = asteroids.sorted()
        var greatMass = mass
        for asteroid in sortedAsteroids {
            if greatMass >= asteroid {
                greatMass += asteroid
            } else {
                return false
            }
        }
        return true
    }
}