
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_chan_def {int dummy; } ;
struct wireless_dev {int iftype; struct cfg80211_chan_def preset_chandef; int beacon_interval; } ;
struct genl_info {int dummy; } ;
struct cfg80211_registered_device {int devlist_mtx; int wiphy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;




 int cfg80211_reg_can_beacon (int *,struct cfg80211_chan_def*) ;
 int cfg80211_set_mesh_channel (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ;
 int cfg80211_set_monitor_channel (struct cfg80211_registered_device*,struct cfg80211_chan_def*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nl80211_can_set_dev_channel (struct wireless_dev*) ;
 int nl80211_parse_chandef (struct cfg80211_registered_device*,struct genl_info*,struct cfg80211_chan_def*) ;

__attribute__((used)) static int __nl80211_set_channel(struct cfg80211_registered_device *rdev,
     struct wireless_dev *wdev,
     struct genl_info *info)
{
 struct cfg80211_chan_def chandef;
 int result;
 enum nl80211_iftype iftype = 129;

 if (wdev)
  iftype = wdev->iftype;

 if (!nl80211_can_set_dev_channel(wdev))
  return -EOPNOTSUPP;

 result = nl80211_parse_chandef(rdev, info, &chandef);
 if (result)
  return result;

 mutex_lock(&rdev->devlist_mtx);
 switch (iftype) {
 case 131:
 case 128:
  if (wdev->beacon_interval) {
   result = -EBUSY;
   break;
  }
  if (!cfg80211_reg_can_beacon(&rdev->wiphy, &chandef)) {
   result = -EINVAL;
   break;
  }
  wdev->preset_chandef = chandef;
  result = 0;
  break;
 case 130:
  result = cfg80211_set_mesh_channel(rdev, wdev, &chandef);
  break;
 case 129:
  result = cfg80211_set_monitor_channel(rdev, &chandef);
  break;
 default:
  result = -EINVAL;
 }
 mutex_unlock(&rdev->devlist_mtx);

 return result;
}
