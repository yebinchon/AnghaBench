
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int aid; int addr; } ;
struct sta_info {TYPE_4__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ps_data {int num_sta_ps; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__* bss; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct TYPE_7__ {int flags; } ;
struct ieee80211_local {TYPE_3__ hw; } ;
struct TYPE_6__ {struct ps_data ps; } ;


 int IEEE80211_HW_AP_LINK_PS ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 int STA_NOTIFY_SLEEP ;
 int WLAN_STA_PS_STA ;
 int atomic_inc (int *) ;
 int drv_sta_notify (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ,TYPE_4__*) ;
 int ps_dbg (struct ieee80211_sub_if_data*,char*,int ,int ) ;
 int set_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static void sta_ps_start(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 struct ps_data *ps;

 if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
     sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN)
  ps = &sdata->bss->ps;
 else
  return;

 atomic_inc(&ps->num_sta_ps);
 set_sta_flag(sta, WLAN_STA_PS_STA);
 if (!(local->hw.flags & IEEE80211_HW_AP_LINK_PS))
  drv_sta_notify(local, sdata, STA_NOTIFY_SLEEP, &sta->sta);
 ps_dbg(sdata, "STA %pM aid %d enters power save mode\n",
        sta->sta.addr, sta->sta.aid);
}
