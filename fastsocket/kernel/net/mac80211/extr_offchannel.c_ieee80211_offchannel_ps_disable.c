
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_4__ {scalar_t__ dynamic_ps_timeout; int flags; } ;
struct TYPE_3__ {TYPE_2__ conf; } ;
struct ieee80211_local {TYPE_1__ hw; int dynamic_ps_timer; scalar_t__ offchannel_ps_enabled; int ps_sdata; } ;


 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_PS ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_send_nullfunc (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_sta_reset_beacon_monitor (struct ieee80211_sub_if_data*) ;
 int ieee80211_sta_reset_conn_monitor (struct ieee80211_sub_if_data*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void ieee80211_offchannel_ps_disable(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;

 if (!local->ps_sdata)
  ieee80211_send_nullfunc(local, sdata, 0);
 else if (local->offchannel_ps_enabled) {
  local->hw.conf.flags |= IEEE80211_CONF_PS;
  ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_PS);
 } else if (local->hw.conf.dynamic_ps_timeout > 0) {






  ieee80211_send_nullfunc(local, sdata, 0);
  mod_timer(&local->dynamic_ps_timer, jiffies +
     msecs_to_jiffies(local->hw.conf.dynamic_ps_timeout));
 }

 ieee80211_sta_reset_beacon_monitor(sdata);
 ieee80211_sta_reset_conn_monitor(sdata);
}
