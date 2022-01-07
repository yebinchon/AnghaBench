
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_if_managed {scalar_t__ probe_send_count; int conn_mon_timer; int associated; } ;
struct TYPE_6__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_2__* local; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;


 scalar_t__ IEEE80211_CONNECTION_IDLE_TIME ;
 int IEEE80211_HW_CONNECTION_MONITOR ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies_up (scalar_t__) ;
 scalar_t__ unlikely (int) ;

void ieee80211_sta_reset_conn_monitor(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

 if (unlikely(!sdata->u.mgd.associated))
  return;

 if (sdata->local->hw.flags & IEEE80211_HW_CONNECTION_MONITOR)
  return;

 mod_timer(&sdata->u.mgd.conn_mon_timer,
    round_jiffies_up(jiffies + IEEE80211_CONNECTION_IDLE_TIME));

 ifmgd->probe_send_count = 0;
}
