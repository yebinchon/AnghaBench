
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_if_managed {int conn_mon_timer; int bcn_mon_timer; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; struct ieee80211_local* local; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {int flags; TYPE_2__ conf; } ;
struct ieee80211_local {int offchannel_ps_enabled; TYPE_3__ hw; int dynamic_ps_enable_work; int dynamic_ps_timer; } ;


 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_PS ;
 int IEEE80211_HW_PS_NULLFUNC_STACK ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_send_nullfunc (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ;

__attribute__((used)) static void ieee80211_offchannel_ps_enable(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

 local->offchannel_ps_enabled = 0;



 del_timer_sync(&local->dynamic_ps_timer);
 del_timer_sync(&ifmgd->bcn_mon_timer);
 del_timer_sync(&ifmgd->conn_mon_timer);

 cancel_work_sync(&local->dynamic_ps_enable_work);

 if (local->hw.conf.flags & IEEE80211_CONF_PS) {
  local->offchannel_ps_enabled = 1;
  local->hw.conf.flags &= ~IEEE80211_CONF_PS;
  ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_PS);
 }

 if (!local->offchannel_ps_enabled ||
     !(local->hw.flags & IEEE80211_HW_PS_NULLFUNC_STACK))
  ieee80211_send_nullfunc(local, sdata, 1);
}
