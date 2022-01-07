
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* configure_filter ) (int *,unsigned int,unsigned int*,int ) ;} ;


 int might_sleep () ;
 int stub1 (int *,unsigned int,unsigned int*,int ) ;
 int trace_drv_configure_filter (struct ieee80211_local*,unsigned int,unsigned int*,int ) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_configure_filter(struct ieee80211_local *local,
     unsigned int changed_flags,
     unsigned int *total_flags,
     u64 multicast)
{
 might_sleep();

 trace_drv_configure_filter(local, changed_flags, total_flags,
       multicast);
 local->ops->configure_filter(&local->hw, changed_flags, total_flags,
         multicast);
 trace_drv_return_void(local);
}
