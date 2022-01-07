
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dot11MeshHWMPpreqMinInterval; } ;
struct ieee80211_if_mesh {int wrkq_flags; TYPE_1__ mshcfg; scalar_t__ last_preq; scalar_t__ preq_queue_len; } ;
struct TYPE_4__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_2__ u; } ;


 int MESH_WORK_DRIFT_ADJUST ;
 int MESH_WORK_GROW_MPATH_TABLE ;
 int MESH_WORK_GROW_MPP_TABLE ;
 int MESH_WORK_HOUSEKEEPING ;
 int MESH_WORK_ROOT ;
 int ieee80211_mesh_housekeeping (struct ieee80211_sub_if_data*) ;
 int ieee80211_mesh_rootpath (struct ieee80211_sub_if_data*) ;
 int jiffies ;
 int mesh_mpath_table_grow () ;
 int mesh_mpp_table_grow () ;
 int mesh_path_start_discovery (struct ieee80211_sub_if_data*) ;
 int mesh_sync_adjust_tbtt (struct ieee80211_sub_if_data*) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ time_after (int ,scalar_t__) ;

void ieee80211_mesh_work(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

 if (ifmsh->preq_queue_len &&
     time_after(jiffies,
         ifmsh->last_preq + msecs_to_jiffies(ifmsh->mshcfg.dot11MeshHWMPpreqMinInterval)))
  mesh_path_start_discovery(sdata);

 if (test_and_clear_bit(MESH_WORK_GROW_MPATH_TABLE, &ifmsh->wrkq_flags))
  mesh_mpath_table_grow();

 if (test_and_clear_bit(MESH_WORK_GROW_MPP_TABLE, &ifmsh->wrkq_flags))
  mesh_mpp_table_grow();

 if (test_and_clear_bit(MESH_WORK_HOUSEKEEPING, &ifmsh->wrkq_flags))
  ieee80211_mesh_housekeeping(sdata);

 if (test_and_clear_bit(MESH_WORK_ROOT, &ifmsh->wrkq_flags))
  ieee80211_mesh_rootpath(sdata);

 if (test_and_clear_bit(MESH_WORK_DRIFT_ADJUST, &ifmsh->wrkq_flags))
  mesh_sync_adjust_tbtt(sdata);
}
