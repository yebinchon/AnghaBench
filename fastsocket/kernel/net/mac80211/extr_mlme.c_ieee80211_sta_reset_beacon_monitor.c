
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ beacon_timeout; int bcn_mon_timer; } ;
struct TYPE_10__ {TYPE_4__ mgd; } ;
struct TYPE_6__ {int driver_flags; } ;
struct ieee80211_sub_if_data {TYPE_5__ u; TYPE_3__* local; TYPE_1__ vif; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_8__ {TYPE_2__ hw; } ;


 int IEEE80211_HW_CONNECTION_MONITOR ;
 int IEEE80211_VIF_BEACON_FILTER ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies_up (scalar_t__) ;

void ieee80211_sta_reset_beacon_monitor(struct ieee80211_sub_if_data *sdata)
{
 if (sdata->vif.driver_flags & IEEE80211_VIF_BEACON_FILTER)
  return;

 if (sdata->local->hw.flags & IEEE80211_HW_CONNECTION_MONITOR)
  return;

 mod_timer(&sdata->u.mgd.bcn_mon_timer,
    round_jiffies_up(jiffies + sdata->u.mgd.beacon_timeout));
}
