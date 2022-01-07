
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {TYPE_2__* current_bss; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_channel {int dummy; } ;
struct cfg80211_registered_device {int wiphy; } ;
struct cfg80211_auth_request {int ie_len; int sae_data_len; int auth_type; int key_len; int key_idx; TYPE_3__* bss; int const* key; int const* sae_data; int const* ie; } ;
typedef int req ;
typedef enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;
struct TYPE_7__ {int channel; } ;
struct TYPE_5__ {int bssid; } ;
struct TYPE_6__ {TYPE_1__ pub; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int CHAN_MODE_SHARED ;
 int EALREADY ;
 int EINVAL ;
 int ENOENT ;
 int NL80211_AUTHTYPE_SHARED_KEY ;
 int WLAN_CAPABILITY_ESS ;
 int cfg80211_can_use_chan (struct cfg80211_registered_device*,struct wireless_dev*,int ,int ) ;
 TYPE_3__* cfg80211_get_bss (int *,struct ieee80211_channel*,int const*,int const*,int,int ,int ) ;
 int cfg80211_put_bss (int *,TYPE_3__*) ;
 scalar_t__ ether_addr_equal (int const*,int ) ;
 int memset (struct cfg80211_auth_request*,int ,int) ;
 int rdev_auth (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_auth_request*) ;

int __cfg80211_mlme_auth(struct cfg80211_registered_device *rdev,
    struct net_device *dev,
    struct ieee80211_channel *chan,
    enum nl80211_auth_type auth_type,
    const u8 *bssid,
    const u8 *ssid, int ssid_len,
    const u8 *ie, int ie_len,
    const u8 *key, int key_len, int key_idx,
    const u8 *sae_data, int sae_data_len)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_auth_request req;
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (auth_type == NL80211_AUTHTYPE_SHARED_KEY)
  if (!key || !key_len || key_idx < 0 || key_idx > 4)
   return -EINVAL;

 if (wdev->current_bss &&
     ether_addr_equal(bssid, wdev->current_bss->pub.bssid))
  return -EALREADY;

 memset(&req, 0, sizeof(req));

 req.ie = ie;
 req.ie_len = ie_len;
 req.sae_data = sae_data;
 req.sae_data_len = sae_data_len;
 req.auth_type = auth_type;
 req.bss = cfg80211_get_bss(&rdev->wiphy, chan, bssid, ssid, ssid_len,
       WLAN_CAPABILITY_ESS, WLAN_CAPABILITY_ESS);
 req.key = key;
 req.key_len = key_len;
 req.key_idx = key_idx;
 if (!req.bss)
  return -ENOENT;

 err = cfg80211_can_use_chan(rdev, wdev, req.bss->channel,
        CHAN_MODE_SHARED);
 if (err)
  goto out;

 err = rdev_auth(rdev, dev, &req);

out:
 cfg80211_put_bss(&rdev->wiphy, req.bss);
 return err;
}
