
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vifparams ;
typedef int u32 ;
struct wireless_dev {int iftype; int wiphy; } ;
struct vif_params {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EINVAL ;




 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_MONITOR ;
 int NL80211_IFTYPE_STATION ;
 int NL80211_IFTYPE_WDS ;
 int cfg80211_change_iface (struct cfg80211_registered_device*,struct net_device*,int,int *,struct vif_params*) ;
 int cfg80211_lock_rdev (struct cfg80211_registered_device*) ;
 int cfg80211_unlock_rdev (struct cfg80211_registered_device*) ;
 int memset (struct vif_params*,int ,int) ;
 struct cfg80211_registered_device* wiphy_to_dev (int ) ;

int cfg80211_wext_siwmode(struct net_device *dev, struct iw_request_info *info,
     u32 *mode, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev;
 struct vif_params vifparams;
 enum nl80211_iftype type;
 int ret;

 rdev = wiphy_to_dev(wdev->wiphy);

 switch (*mode) {
 case 130:
  type = NL80211_IFTYPE_STATION;
  break;
 case 131:
  type = NL80211_IFTYPE_ADHOC;
  break;
 case 128:
  type = NL80211_IFTYPE_WDS;
  break;
 case 129:
  type = NL80211_IFTYPE_MONITOR;
  break;
 default:
  return -EINVAL;
 }

 if (type == wdev->iftype)
  return 0;

 memset(&vifparams, 0, sizeof(vifparams));

 cfg80211_lock_rdev(rdev);
 ret = cfg80211_change_iface(rdev, dev, type, ((void*)0), &vifparams);
 cfg80211_unlock_rdev(rdev);

 return ret;
}
