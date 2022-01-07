
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_registered_device {int dummy; } ;


 int cfg80211_unlock_rdev (struct cfg80211_registered_device*) ;
 int rtnl_unlock () ;

__attribute__((used)) static void nl80211_finish_wdev_dump(struct cfg80211_registered_device *rdev)
{
 cfg80211_unlock_rdev(rdev);
 rtnl_unlock();
}
