
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_ringparam ) (int *,int *,int *,int *,int *) ;} ;


 int might_sleep () ;
 int stub1 (int *,int *,int *,int *,int *) ;
 int trace_drv_get_ringparam (struct ieee80211_local*,int *,int *,int *,int *) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_get_ringparam(struct ieee80211_local *local,
         u32 *tx, u32 *tx_max, u32 *rx, u32 *rx_max)
{
 might_sleep();

 trace_drv_get_ringparam(local, tx, tx_max, rx, rx_max);
 if (local->ops->get_ringparam)
  local->ops->get_ringparam(&local->hw, tx, tx_max, rx, rx_max);
 trace_drv_return_void(local);
}
