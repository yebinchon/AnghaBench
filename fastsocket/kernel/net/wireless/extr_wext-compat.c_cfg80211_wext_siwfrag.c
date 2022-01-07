
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct wireless_dev {TYPE_1__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int fixed; scalar_t__ disabled; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_2__ {int frag_threshold; } ;


 int EINVAL ;
 int WIPHY_PARAM_FRAG_THRESHOLD ;
 int rdev_set_wiphy_params (struct cfg80211_registered_device*,int ) ;
 struct cfg80211_registered_device* wiphy_to_dev (TYPE_1__*) ;

int cfg80211_wext_siwfrag(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *frag, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_dev(wdev->wiphy);
 u32 ofrag = wdev->wiphy->frag_threshold;
 int err;

 if (frag->disabled || !frag->fixed)
  wdev->wiphy->frag_threshold = (u32) -1;
 else if (frag->value < 256)
  return -EINVAL;
 else {

  wdev->wiphy->frag_threshold = frag->value & ~0x1;
 }

 err = rdev_set_wiphy_params(rdev, WIPHY_PARAM_FRAG_THRESHOLD);
 if (err)
  wdev->wiphy->frag_threshold = ofrag;

 return err;
}
