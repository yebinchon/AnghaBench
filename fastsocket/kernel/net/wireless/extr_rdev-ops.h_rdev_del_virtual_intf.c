
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* del_virtual_intf ) (int *,struct wireless_dev*) ;} ;


 int stub1 (int *,struct wireless_dev*) ;
 int trace_rdev_del_virtual_intf (int *,struct wireless_dev*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int
rdev_del_virtual_intf(struct cfg80211_registered_device *rdev,
        struct wireless_dev *wdev)
{
 int ret;
 trace_rdev_del_virtual_intf(&rdev->wiphy, wdev);
 ret = rdev->ops->del_virtual_intf(&rdev->wiphy, wdev);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
