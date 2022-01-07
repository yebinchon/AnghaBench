
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int rfkill_sync; int rfkill; } ;


 scalar_t__ rfkill_set_hw_state (int ,int) ;
 int schedule_work (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void wiphy_rfkill_set_hw_state(struct wiphy *wiphy, bool blocked)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);

 if (rfkill_set_hw_state(rdev->rfkill, blocked))
  schedule_work(&rdev->rfkill_sync);
}
