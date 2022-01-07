
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* cancel_remain_on_channel ) (int *) ;} ;


 int might_sleep () ;
 int stub1 (int *) ;
 int trace_drv_cancel_remain_on_channel (struct ieee80211_local*) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;

__attribute__((used)) static inline int drv_cancel_remain_on_channel(struct ieee80211_local *local)
{
 int ret;

 might_sleep();

 trace_drv_cancel_remain_on_channel(local);
 ret = local->ops->cancel_remain_on_channel(&local->hw);
 trace_drv_return_int(local, ret);

 return ret;
}
