
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_registered_device {int mtx; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static inline void cfg80211_lock_rdev(struct cfg80211_registered_device *rdev)
{
 mutex_lock(&rdev->mtx);
}
