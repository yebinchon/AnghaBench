
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_antenna ) (int *,int *,int *) ;} ;


 int stub1 (int *,int *,int *) ;
 int trace_rdev_get_antenna (int *) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_return_int_tx_rx (int *,int,int ,int ) ;

__attribute__((used)) static inline int rdev_get_antenna(struct cfg80211_registered_device *rdev,
       u32 *tx_ant, u32 *rx_ant)
{
 int ret;
 trace_rdev_get_antenna(&rdev->wiphy);
 ret = rdev->ops->get_antenna(&rdev->wiphy, tx_ant, rx_ant);
 if (ret)
  trace_rdev_return_int(&rdev->wiphy, ret);
 else
  trace_rdev_return_int_tx_rx(&rdev->wiphy, ret, *tx_ant,
         *rx_ant);
 return ret;
}
