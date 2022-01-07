
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sta_info {int plink_timer; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_3__ {int user_mpm; } ;
struct TYPE_4__ {TYPE_1__ mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int del_timer_sync (int *) ;
 int ieee80211_mbss_info_change_notify (struct ieee80211_sub_if_data*,int) ;
 int mesh_accept_plinks_update (struct ieee80211_sub_if_data*) ;
 int mesh_plink_deactivate (struct sta_info*) ;

void mesh_sta_cleanup(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 u32 changed;






 changed = mesh_accept_plinks_update(sdata);
 if (!sdata->u.mesh.user_mpm) {
  changed |= mesh_plink_deactivate(sta);
  del_timer_sync(&sta->plink_timer);
 }

 if (changed)
  ieee80211_mbss_info_change_notify(sdata, changed);
}
