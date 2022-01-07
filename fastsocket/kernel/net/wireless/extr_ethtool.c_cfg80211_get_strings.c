
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wireless_dev {int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ get_et_strings; } ;


 int rdev_get_et_strings (struct cfg80211_registered_device*,struct net_device*,int ,int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static void cfg80211_get_strings(struct net_device *dev, u32 sset, u8 *data)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 if (rdev->ops->get_et_strings)
  rdev_get_et_strings(rdev, dev, sset, data);
}
