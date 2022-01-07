
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {scalar_t__ sme_state; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;


 scalar_t__ CFG80211_SME_CONNECTING ;
 int GFP_KERNEL ;
 int WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int __cfg80211_connect_result (struct net_device*,int const*,int *,int ,int *,int ,int ,int,int *) ;
 int nl80211_send_assoc_timeout (struct cfg80211_registered_device*,struct net_device*,int const*,int ) ;
 int trace_cfg80211_send_assoc_timeout (struct net_device*,int const*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_dev (struct wiphy*) ;

void cfg80211_send_assoc_timeout(struct net_device *dev, const u8 *addr)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wiphy);

 trace_cfg80211_send_assoc_timeout(dev, addr);
 wdev_lock(wdev);

 nl80211_send_assoc_timeout(rdev, dev, addr, GFP_KERNEL);
 if (wdev->sme_state == CFG80211_SME_CONNECTING)
  __cfg80211_connect_result(dev, addr, ((void*)0), 0, ((void*)0), 0,
       WLAN_STATUS_UNSPECIFIED_FAILURE,
       0, ((void*)0));

 wdev_unlock(wdev);
}
