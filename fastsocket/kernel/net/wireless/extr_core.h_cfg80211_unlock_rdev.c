
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_registered_device {int mtx; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct cfg80211_registered_device*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline void cfg80211_unlock_rdev(struct cfg80211_registered_device *rdev)
{
 BUG_ON(IS_ERR(rdev) || !rdev);
 mutex_unlock(&rdev->mtx);
}
