
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_ringparam ) (int *,int *,int *,int *,int *) ;} ;


 int stub1 (int *,int *,int *,int *,int *) ;
 int trace_rdev_get_ringparam (int *) ;
 int trace_rdev_return_void_tx_rx (int *,int ,int ,int ,int ) ;

__attribute__((used)) static inline void rdev_get_ringparam(struct cfg80211_registered_device *rdev,
          u32 *tx, u32 *tx_max, u32 *rx,
          u32 *rx_max)
{
 trace_rdev_get_ringparam(&rdev->wiphy);
 rdev->ops->get_ringparam(&rdev->wiphy, tx, tx_max, rx, rx_max);
 trace_rdev_return_void_tx_rx(&rdev->wiphy, *tx, *tx_max, *rx, *rx_max);
}
