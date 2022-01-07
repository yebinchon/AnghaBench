
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int dummy; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;
struct iw_mlme {int cmd; int reason_code; TYPE_1__ addr; } ;
struct cfg80211_registered_device {int dummy; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 int EOPNOTSUPP ;


 scalar_t__ NL80211_IFTYPE_STATION ;
 int __cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

int cfg80211_wext_siwmlme(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *data, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct iw_mlme *mlme = (struct iw_mlme *)extra;
 struct cfg80211_registered_device *rdev;
 int err;

 if (!wdev)
  return -EOPNOTSUPP;

 rdev = wiphy_to_dev(wdev->wiphy);

 if (wdev->iftype != NL80211_IFTYPE_STATION)
  return -EINVAL;

 if (mlme->addr.sa_family != ARPHRD_ETHER)
  return -EINVAL;

 wdev_lock(wdev);
 switch (mlme->cmd) {
 case 129:
 case 128:
  err = __cfg80211_disconnect(rdev, dev, mlme->reason_code,
         1);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }
 wdev_unlock(wdev);

 return err;
}
