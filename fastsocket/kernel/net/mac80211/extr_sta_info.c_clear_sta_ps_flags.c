
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sta_info {struct ieee80211_sub_if_data* sdata; } ;
struct ps_data {int num_sta_ps; } ;
struct TYPE_6__ {struct ps_data ps; } ;
struct TYPE_7__ {TYPE_2__ mesh; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_4__ vif; TYPE_1__* bss; } ;
struct TYPE_5__ {struct ps_data ps; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 int WLAN_STA_PS_DRIVER ;
 int WLAN_STA_PS_STA ;
 int atomic_dec (int *) ;
 int clear_sta_flag (struct sta_info*,int ) ;
 scalar_t__ ieee80211_vif_is_mesh (TYPE_4__*) ;
 scalar_t__ test_and_clear_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static void clear_sta_ps_flags(void *_sta)
{
 struct sta_info *sta = _sta;
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ps_data *ps;

 if (sdata->vif.type == NL80211_IFTYPE_AP ||
     sdata->vif.type == NL80211_IFTYPE_AP_VLAN)
  ps = &sdata->bss->ps;
 else if (ieee80211_vif_is_mesh(&sdata->vif))
  ps = &sdata->u.mesh.ps;
 else
  return;

 clear_sta_flag(sta, WLAN_STA_PS_DRIVER);
 if (test_and_clear_sta_flag(sta, WLAN_STA_PS_STA))
  atomic_dec(&ps->num_sta_ps);
}
