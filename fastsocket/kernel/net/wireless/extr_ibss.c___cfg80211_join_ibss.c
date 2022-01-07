
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_11__ {TYPE_6__* chan; } ;
struct TYPE_9__ {TYPE_5__ chandef; } ;
struct TYPE_10__ {TYPE_3__ ibss; } ;
struct wireless_dev {scalar_t__ ssid_len; int ssid; int sme_state; struct cfg80211_cached_keys* connect_keys; TYPE_4__ wext; scalar_t__ ibss_fixed; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct ieee80211_supported_band {int n_bitrates; TYPE_2__* bitrates; } ;
struct TYPE_7__ {struct ieee80211_supported_band** bands; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;
struct cfg80211_ibss_params {scalar_t__ ssid_len; int ssid; scalar_t__ channel_fixed; TYPE_5__ chandef; int basic_rates; } ;
struct cfg80211_cached_keys {int dummy; } ;
struct TYPE_12__ {size_t band; } ;
struct TYPE_8__ {int flags; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int BIT (int) ;
 int CFG80211_SME_CONNECTING ;
 int CFG80211_SME_IDLE ;
 int CHAN_MODE_EXCLUSIVE ;
 int CHAN_MODE_SHARED ;
 int EALREADY ;
 size_t IEEE80211_BAND_5GHZ ;
 int IEEE80211_RATE_MANDATORY_A ;
 int IEEE80211_RATE_MANDATORY_B ;
 scalar_t__ WARN_ON (struct cfg80211_cached_keys*) ;
 int cfg80211_can_use_chan (struct cfg80211_registered_device*,struct wireless_dev*,TYPE_6__*,int ) ;
 int kfree (struct cfg80211_cached_keys*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int rdev_join_ibss (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_ibss_params*) ;

int __cfg80211_join_ibss(struct cfg80211_registered_device *rdev,
    struct net_device *dev,
    struct cfg80211_ibss_params *params,
    struct cfg80211_cached_keys *connkeys)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (wdev->ssid_len)
  return -EALREADY;

 if (!params->basic_rates) {





  struct ieee80211_supported_band *sband =
   rdev->wiphy.bands[params->chandef.chan->band];
  int j;
  u32 flag = params->chandef.chan->band == IEEE80211_BAND_5GHZ ?
   IEEE80211_RATE_MANDATORY_A :
   IEEE80211_RATE_MANDATORY_B;

  for (j = 0; j < sband->n_bitrates; j++) {
   if (sband->bitrates[j].flags & flag)
    params->basic_rates |= BIT(j);
  }
 }

 if (WARN_ON(wdev->connect_keys))
  kfree(wdev->connect_keys);
 wdev->connect_keys = connkeys;

 wdev->ibss_fixed = params->channel_fixed;



 wdev->sme_state = CFG80211_SME_CONNECTING;

 err = cfg80211_can_use_chan(rdev, wdev, params->chandef.chan,
        params->channel_fixed
        ? CHAN_MODE_SHARED
        : CHAN_MODE_EXCLUSIVE);
 if (err) {
  wdev->connect_keys = ((void*)0);
  return err;
 }

 err = rdev_join_ibss(rdev, dev, params);
 if (err) {
  wdev->connect_keys = ((void*)0);
  wdev->sme_state = CFG80211_SME_IDLE;
  return err;
 }

 memcpy(wdev->ssid, params->ssid, params->ssid_len);
 wdev->ssid_len = params->ssid_len;

 return 0;
}
