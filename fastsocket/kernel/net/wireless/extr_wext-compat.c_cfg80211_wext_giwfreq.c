
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {int iftype; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {int e; int m; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct cfg80211_chan_def {TYPE_2__* chan; } ;
struct TYPE_4__ {int center_freq; } ;
struct TYPE_3__ {int get_channel; } ;


 int EINVAL ;



 int cfg80211_ibss_wext_giwfreq (struct net_device*,struct iw_request_info*,struct iw_freq*,char*) ;
 int cfg80211_mgd_wext_giwfreq (struct net_device*,struct iw_request_info*,struct iw_freq*,char*) ;
 int rdev_get_channel (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

__attribute__((used)) static int cfg80211_wext_giwfreq(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_freq *freq, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct cfg80211_chan_def chandef;
 int ret;

 switch (wdev->iftype) {
 case 128:
  return cfg80211_mgd_wext_giwfreq(dev, info, freq, extra);
 case 130:
  return cfg80211_ibss_wext_giwfreq(dev, info, freq, extra);
 case 129:
  if (!rdev->ops->get_channel)
   return -EINVAL;

  ret = rdev_get_channel(rdev, wdev, &chandef);
  if (ret)
   return ret;
  freq->m = chandef.chan->center_freq;
  freq->e = 6;
  return 0;
 default:
  return -EINVAL;
 }
}
