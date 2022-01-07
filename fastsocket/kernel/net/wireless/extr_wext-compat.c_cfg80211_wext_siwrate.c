
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct wireless_dev {TYPE_3__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; scalar_t__ fixed; } ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int bitrate; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct cfg80211_bitrate_mask {TYPE_2__* control; } ;
typedef int mask ;
struct TYPE_6__ {struct ieee80211_supported_band** bands; } ;
struct TYPE_5__ {int legacy; } ;
struct TYPE_4__ {int set_bitrate_mask; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IEEE80211_NUM_BANDS ;
 int memset (struct cfg80211_bitrate_mask*,int ,int) ;
 int rdev_set_bitrate_mask (struct cfg80211_registered_device*,struct net_device*,int *,struct cfg80211_bitrate_mask*) ;
 struct cfg80211_registered_device* wiphy_to_dev (TYPE_3__*) ;

__attribute__((used)) static int cfg80211_wext_siwrate(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *rate, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 struct cfg80211_bitrate_mask mask;
 u32 fixed, maxrate;
 struct ieee80211_supported_band *sband;
 int band, ridx;
 bool match = 0;

 if (!rdev->ops->set_bitrate_mask)
  return -EOPNOTSUPP;

 memset(&mask, 0, sizeof(mask));
 fixed = 0;
 maxrate = (u32)-1;

 if (rate->value < 0) {

 } else if (rate->fixed) {
  fixed = rate->value / 100000;
 } else {
  maxrate = rate->value / 100000;
 }

 for (band = 0; band < IEEE80211_NUM_BANDS; band++) {
  sband = wdev->wiphy->bands[band];
  if (sband == ((void*)0))
   continue;
  for (ridx = 0; ridx < sband->n_bitrates; ridx++) {
   struct ieee80211_rate *srate = &sband->bitrates[ridx];
   if (fixed == srate->bitrate) {
    mask.control[band].legacy = 1 << ridx;
    match = 1;
    break;
   }
   if (srate->bitrate <= maxrate) {
    mask.control[band].legacy |= 1 << ridx;
    match = 1;
   }
  }
 }

 if (!match)
  return -EINVAL;

 return rdev_set_bitrate_mask(rdev, dev, ((void*)0), &mask);
}
