
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_tx_power ) (int *,struct wireless_dev*,int*) ;} ;


 int stub1 (int *,struct wireless_dev*,int*) ;
 int trace_rdev_get_tx_power (int *,struct wireless_dev*) ;
 int trace_rdev_return_int_int (int *,int,int) ;

__attribute__((used)) static inline int rdev_get_tx_power(struct cfg80211_registered_device *rdev,
        struct wireless_dev *wdev, int *dbm)
{
 int ret;
 trace_rdev_get_tx_power(&rdev->wiphy, wdev);
 ret = rdev->ops->get_tx_power(&rdev->wiphy, wdev, dbm);
 trace_rdev_return_int_int(&rdev->wiphy, ret, *dbm);
 return ret;
}
