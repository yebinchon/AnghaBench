
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* rfkill_poll ) (int *) ;} ;


 int might_sleep () ;
 int stub1 (int *) ;

__attribute__((used)) static inline void drv_rfkill_poll(struct ieee80211_local *local)
{
 might_sleep();

 if (local->ops->rfkill_poll)
  local->ops->rfkill_poll(&local->hw);
}
