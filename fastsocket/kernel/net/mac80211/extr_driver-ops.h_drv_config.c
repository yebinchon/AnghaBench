
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* config ) (int *,int ) ;} ;


 int might_sleep () ;
 int stub1 (int *,int ) ;
 int trace_drv_config (struct ieee80211_local*,int ) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;

__attribute__((used)) static inline int drv_config(struct ieee80211_local *local, u32 changed)
{
 int ret;

 might_sleep();

 trace_drv_config(local, changed);
 ret = local->ops->config(&local->hw, changed);
 trace_drv_return_int(local, ret);
 return ret;
}
