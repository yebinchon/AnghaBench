
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ssid_len; struct ieee80211_channel* channel; } ;
struct TYPE_4__ {TYPE_1__ connect; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ sme_state; TYPE_2__ wext; int * wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int dummy; } ;
struct ieee80211_channel {int flags; } ;
struct cfg80211_registered_device {int devlist_mtx; int sched_scan_mtx; int wiphy; } ;
struct cfg80211_chan_def {int center_freq1; void* chan; int width; } ;


 scalar_t__ CFG80211_SME_IDLE ;
 int EINVAL ;
 int IEEE80211_CHAN_DISABLED ;
 int NL80211_CHAN_WIDTH_20_NOHT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int __cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int cfg80211_lock_rdev (struct cfg80211_registered_device*) ;
 int cfg80211_mgd_wext_connect (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int cfg80211_set_monitor_channel (struct cfg80211_registered_device*,struct cfg80211_chan_def*) ;
 int cfg80211_unlock_rdev (struct cfg80211_registered_device*) ;
 int cfg80211_wext_freq (int *,struct iw_freq*) ;
 void* ieee80211_get_channel (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_dev (int *) ;

int cfg80211_mgd_wext_siwfreq(struct net_device *dev,
         struct iw_request_info *info,
         struct iw_freq *wextfreq, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct ieee80211_channel *chan = ((void*)0);
 int err, freq;


 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION))
  return -EINVAL;

 freq = cfg80211_wext_freq(wdev->wiphy, wextfreq);
 if (freq < 0)
  return freq;

 if (freq) {
  chan = ieee80211_get_channel(wdev->wiphy, freq);
  if (!chan)
   return -EINVAL;
  if (chan->flags & IEEE80211_CHAN_DISABLED)
   return -EINVAL;
 }

 cfg80211_lock_rdev(rdev);
 mutex_lock(&rdev->devlist_mtx);
 mutex_lock(&rdev->sched_scan_mtx);
 wdev_lock(wdev);

 if (wdev->sme_state != CFG80211_SME_IDLE) {
  bool event = 1;

  if (wdev->wext.connect.channel == chan) {
   err = 0;
   goto out;
  }


  if (wdev->wext.connect.ssid_len)
   event = 0;
  err = __cfg80211_disconnect(rdev, dev,
         WLAN_REASON_DEAUTH_LEAVING, event);
  if (err)
   goto out;
 }


 wdev->wext.connect.channel = chan;
 if (chan && !wdev->wext.connect.ssid_len) {
  struct cfg80211_chan_def chandef = {
   .width = NL80211_CHAN_WIDTH_20_NOHT,
   .center_freq1 = freq,
  };

  chandef.chan = ieee80211_get_channel(&rdev->wiphy, freq);
  if (chandef.chan)
   err = cfg80211_set_monitor_channel(rdev, &chandef);
  else
   err = -EINVAL;
  goto out;
 }

 err = cfg80211_mgd_wext_connect(rdev, wdev);
 out:
 wdev_unlock(wdev);
 mutex_unlock(&rdev->sched_scan_mtx);
 mutex_unlock(&rdev->devlist_mtx);
 cfg80211_unlock_rdev(rdev);
 return err;
}
