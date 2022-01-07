
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int wiphy_idx; } ;


 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

int get_wiphy_idx(struct wiphy *wiphy)
{
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);

 return rdev->wiphy_idx;
}
