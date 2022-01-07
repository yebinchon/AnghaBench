
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sw_scan_start ) (int *) ;} ;


 int might_sleep () ;
 int stub1 (int *) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_sw_scan_start (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_sw_scan_start(struct ieee80211_local *local)
{
 might_sleep();

 trace_drv_sw_scan_start(local);
 if (local->ops->sw_scan_start)
  local->ops->sw_scan_start(&local->hw);
 trace_drv_return_void(local);
}
