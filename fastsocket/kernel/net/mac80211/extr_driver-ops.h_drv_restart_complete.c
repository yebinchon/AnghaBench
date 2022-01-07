
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* restart_complete ) (int *) ;} ;


 int might_sleep () ;
 int stub1 (int *) ;
 int trace_drv_restart_complete (struct ieee80211_local*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_restart_complete(struct ieee80211_local *local)
{
 might_sleep();

 trace_drv_restart_complete(local);
 if (local->ops->restart_complete)
  local->ops->restart_complete(&local->hw);
 trace_drv_return_void(local);
}
