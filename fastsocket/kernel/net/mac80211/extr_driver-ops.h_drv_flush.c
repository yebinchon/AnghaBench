
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flush ) (int *,int ,int) ;} ;


 int might_sleep () ;
 int stub1 (int *,int ,int) ;
 int trace_drv_flush (struct ieee80211_local*,int ,int) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_flush(struct ieee80211_local *local,
        u32 queues, bool drop)
{
 might_sleep();

 trace_drv_flush(local, queues, drop);
 if (local->ops->flush)
  local->ops->flush(&local->hw, queues, drop);
 trace_drv_return_void(local);
}
