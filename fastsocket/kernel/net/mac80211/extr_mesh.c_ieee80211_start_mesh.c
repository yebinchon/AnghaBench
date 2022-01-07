
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int enable_beacon; int basic_rates; int ht_operation_mode; } ;
struct TYPE_8__ {TYPE_3__ bss_conf; } ;
struct TYPE_6__ {int ht_opmode; } ;
struct ieee80211_if_mesh {int adjusting_tbtt; TYPE_2__ mshcfg; int wrkq_flags; scalar_t__ sync_offset_clockdrift_max; int mesh_sp_id; int sync_ops; scalar_t__ mesh_auth_id; scalar_t__ mesh_cc_id; } ;
struct TYPE_5__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {int dev; TYPE_4__ vif; int work; struct ieee80211_local* local; TYPE_1__ u; } ;
struct ieee80211_local {int hw; int iff_allmultis; int fif_other_bss; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_HT ;
 int ENOMEM ;
 int MESH_WORK_HOUSEKEEPING ;
 int atomic_inc (int *) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_configure_filter (struct ieee80211_local*) ;
 int ieee80211_get_sdata_band (struct ieee80211_sub_if_data*) ;
 int ieee80211_mandatory_rates (struct ieee80211_local*,int) ;
 scalar_t__ ieee80211_mesh_build_beacon (struct ieee80211_if_mesh*) ;
 int ieee80211_mesh_root_setup (struct ieee80211_if_mesh*) ;
 int ieee80211_mesh_sync_ops_get (int ) ;
 int ieee80211_mps_local_status_update (struct ieee80211_sub_if_data*) ;
 int ieee80211_queue_work (int *,int *) ;
 int ieee80211_stop_mesh (struct ieee80211_sub_if_data*) ;
 int netif_carrier_on (int ) ;
 int set_bit (int ,int *) ;

int ieee80211_start_mesh(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;
 struct ieee80211_local *local = sdata->local;
 u32 changed = BSS_CHANGED_BEACON |
        BSS_CHANGED_BEACON_ENABLED |
        BSS_CHANGED_HT |
        BSS_CHANGED_BASIC_RATES |
        BSS_CHANGED_BEACON_INT;
 enum ieee80211_band band = ieee80211_get_sdata_band(sdata);

 local->fif_other_bss++;

 atomic_inc(&local->iff_allmultis);
 ieee80211_configure_filter(local);

 ifmsh->mesh_cc_id = 0;
 ifmsh->mesh_auth_id = 0;

 ifmsh->sync_ops = ieee80211_mesh_sync_ops_get(ifmsh->mesh_sp_id);
 ifmsh->adjusting_tbtt = 0;
 ifmsh->sync_offset_clockdrift_max = 0;
 set_bit(MESH_WORK_HOUSEKEEPING, &ifmsh->wrkq_flags);
 ieee80211_mesh_root_setup(ifmsh);
 ieee80211_queue_work(&local->hw, &sdata->work);
 sdata->vif.bss_conf.ht_operation_mode =
    ifmsh->mshcfg.ht_opmode;
 sdata->vif.bss_conf.enable_beacon = 1;
 sdata->vif.bss_conf.basic_rates =
  ieee80211_mandatory_rates(local, band);

 changed |= ieee80211_mps_local_status_update(sdata);

 if (ieee80211_mesh_build_beacon(ifmsh)) {
  ieee80211_stop_mesh(sdata);
  return -ENOMEM;
 }

 ieee80211_bss_info_change_notify(sdata, changed);

 netif_carrier_on(sdata->dev);
 return 0;
}
