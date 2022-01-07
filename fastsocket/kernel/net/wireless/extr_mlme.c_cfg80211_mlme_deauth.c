
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;


 int __cfg80211_mlme_deauth (struct cfg80211_registered_device*,struct net_device*,int const*,int const*,int,int ,int) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

int cfg80211_mlme_deauth(struct cfg80211_registered_device *rdev,
    struct net_device *dev, const u8 *bssid,
    const u8 *ie, int ie_len, u16 reason,
    bool local_state_change)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 wdev_lock(wdev);
 err = __cfg80211_mlme_deauth(rdev, dev, bssid, ie, ie_len, reason,
         local_state_change);
 wdev_unlock(wdev);

 return err;
}
