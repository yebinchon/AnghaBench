
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int ieee80211_ptr; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int devlist_mtx; } ;
typedef enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;


 int __cfg80211_mlme_auth (struct cfg80211_registered_device*,struct net_device*,struct ieee80211_channel*,int,int const*,int const*,int,int const*,int,int const*,int,int,int const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdev_lock (int ) ;
 int wdev_unlock (int ) ;

int cfg80211_mlme_auth(struct cfg80211_registered_device *rdev,
         struct net_device *dev, struct ieee80211_channel *chan,
         enum nl80211_auth_type auth_type, const u8 *bssid,
         const u8 *ssid, int ssid_len,
         const u8 *ie, int ie_len,
         const u8 *key, int key_len, int key_idx,
         const u8 *sae_data, int sae_data_len)
{
 int err;

 mutex_lock(&rdev->devlist_mtx);
 wdev_lock(dev->ieee80211_ptr);
 err = __cfg80211_mlme_auth(rdev, dev, chan, auth_type, bssid,
       ssid, ssid_len, ie, ie_len,
       key, key_len, key_idx,
       sae_data, sae_data_len);
 wdev_unlock(dev->ieee80211_ptr);
 mutex_unlock(&rdev->devlist_mtx);

 return err;
}
