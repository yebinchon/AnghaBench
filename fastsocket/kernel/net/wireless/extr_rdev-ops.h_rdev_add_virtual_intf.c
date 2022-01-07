
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wireless_dev {int dummy; } ;
struct vif_params {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {struct wireless_dev* (* add_virtual_intf ) (int *,char*,int,int *,struct vif_params*) ;} ;


 struct wireless_dev* stub1 (int *,char*,int,int *,struct vif_params*) ;
 int trace_rdev_add_virtual_intf (int *,char*,int) ;
 int trace_rdev_return_wdev (int *,struct wireless_dev*) ;

__attribute__((used)) static inline struct wireless_dev
*rdev_add_virtual_intf(struct cfg80211_registered_device *rdev, char *name,
         enum nl80211_iftype type, u32 *flags,
         struct vif_params *params)
{
 struct wireless_dev *ret;
 trace_rdev_add_virtual_intf(&rdev->wiphy, name, type);
 ret = rdev->ops->add_virtual_intf(&rdev->wiphy, name, type, flags,
       params);
 trace_rdev_return_wdev(&rdev->wiphy, ret);
 return ret;
}
