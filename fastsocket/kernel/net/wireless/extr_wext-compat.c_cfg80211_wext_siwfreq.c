
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int dummy; } ;
struct cfg80211_registered_device {int devlist_mtx; int wiphy; } ;
struct cfg80211_chan_def {int center_freq1; void* chan; int width; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int NL80211_CHAN_WIDTH_20_NOHT ;




 int cfg80211_ibss_wext_siwfreq (struct net_device*,struct iw_request_info*,struct iw_freq*,char*) ;
 int cfg80211_mgd_wext_siwfreq (struct net_device*,struct iw_request_info*,struct iw_freq*,char*) ;
 int cfg80211_set_mesh_channel (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ;
 int cfg80211_set_monitor_channel (struct cfg80211_registered_device*,struct cfg80211_chan_def*) ;
 int cfg80211_wext_freq (int ,struct iw_freq*) ;
 void* ieee80211_get_channel (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static int cfg80211_wext_siwfreq(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_freq *wextfreq, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct cfg80211_chan_def chandef = {
  .width = NL80211_CHAN_WIDTH_20_NOHT,
 };
 int freq, err;

 switch (wdev->iftype) {
 case 128:
  return cfg80211_mgd_wext_siwfreq(dev, info, wextfreq, extra);
 case 131:
  return cfg80211_ibss_wext_siwfreq(dev, info, wextfreq, extra);
 case 129:
  freq = cfg80211_wext_freq(wdev->wiphy, wextfreq);
  if (freq < 0)
   return freq;
  if (freq == 0)
   return -EINVAL;
  chandef.center_freq1 = freq;
  chandef.chan = ieee80211_get_channel(&rdev->wiphy, freq);
  if (!chandef.chan)
   return -EINVAL;
  mutex_lock(&rdev->devlist_mtx);
  err = cfg80211_set_monitor_channel(rdev, &chandef);
  mutex_unlock(&rdev->devlist_mtx);
  return err;
 case 130:
  freq = cfg80211_wext_freq(wdev->wiphy, wextfreq);
  if (freq < 0)
   return freq;
  if (freq == 0)
   return -EINVAL;
  chandef.center_freq1 = freq;
  chandef.chan = ieee80211_get_channel(&rdev->wiphy, freq);
  if (!chandef.chan)
   return -EINVAL;
  mutex_lock(&rdev->devlist_mtx);
  err = cfg80211_set_mesh_channel(rdev, wdev, &chandef);
  mutex_unlock(&rdev->devlist_mtx);
  return err;
 default:
  return -EOPNOTSUPP;
 }
}
