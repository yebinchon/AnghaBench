
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int devlist_mtx; } ;
struct cfg80211_assoc_request {int dummy; } ;


 int __cfg80211_mlme_assoc (struct cfg80211_registered_device*,struct net_device*,struct ieee80211_channel*,int const*,int const*,int,struct cfg80211_assoc_request*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

int cfg80211_mlme_assoc(struct cfg80211_registered_device *rdev,
   struct net_device *dev,
   struct ieee80211_channel *chan,
   const u8 *bssid,
   const u8 *ssid, int ssid_len,
   struct cfg80211_assoc_request *req)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 mutex_lock(&rdev->devlist_mtx);
 wdev_lock(wdev);
 err = __cfg80211_mlme_assoc(rdev, dev, chan, bssid,
        ssid, ssid_len, req);
 wdev_unlock(wdev);
 mutex_unlock(&rdev->devlist_mtx);

 return err;
}
