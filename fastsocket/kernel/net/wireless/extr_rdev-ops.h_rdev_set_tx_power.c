
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
typedef enum nl80211_tx_power_setting { ____Placeholder_nl80211_tx_power_setting } nl80211_tx_power_setting ;
struct TYPE_2__ {int (* set_tx_power ) (int *,struct wireless_dev*,int,int) ;} ;


 int stub1 (int *,struct wireless_dev*,int,int) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_tx_power (int *,struct wireless_dev*,int,int) ;

__attribute__((used)) static inline int rdev_set_tx_power(struct cfg80211_registered_device *rdev,
        struct wireless_dev *wdev,
        enum nl80211_tx_power_setting type, int mbm)
{
 int ret;
 trace_rdev_set_tx_power(&rdev->wiphy, wdev, type, mbm);
 ret = rdev->ops->set_tx_power(&rdev->wiphy, wdev, type, mbm);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
