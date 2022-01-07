
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int monitor_work; } ;
struct TYPE_7__ {TYPE_1__ mgd; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int work; TYPE_4__* local; TYPE_2__ u; TYPE_3__ vif; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {TYPE_5__ hw; } ;


 int IEEE80211_HW_CONNECTION_MONITOR ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int __ieee80211_stop_poll (struct ieee80211_sub_if_data*) ;
 int ieee80211_queue_work (TYPE_5__*,int *) ;

__attribute__((used)) static void ieee80211_restart_sta_timer(struct ieee80211_sub_if_data *sdata)
{
 u32 flags;

 if (sdata->vif.type == NL80211_IFTYPE_STATION) {
  __ieee80211_stop_poll(sdata);


  flags = sdata->local->hw.flags;
  if (!(flags & IEEE80211_HW_CONNECTION_MONITOR))
   ieee80211_queue_work(&sdata->local->hw,
          &sdata->u.mgd.monitor_work);

  ieee80211_queue_work(&sdata->local->hw, &sdata->work);
 }
}
