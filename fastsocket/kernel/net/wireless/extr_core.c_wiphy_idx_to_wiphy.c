
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_registered_device {struct wiphy wiphy; } ;


 int assert_cfg80211_lock () ;
 struct cfg80211_registered_device* cfg80211_rdev_by_wiphy_idx (int) ;

struct wiphy *wiphy_idx_to_wiphy(int wiphy_idx)
{
 struct cfg80211_registered_device *rdev;

 assert_cfg80211_lock();

 rdev = cfg80211_rdev_by_wiphy_idx(wiphy_idx);
 if (!rdev)
  return ((void*)0);
 return &rdev->wiphy;
}
