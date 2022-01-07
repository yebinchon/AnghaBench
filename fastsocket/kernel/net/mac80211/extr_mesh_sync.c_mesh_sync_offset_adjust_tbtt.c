
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_if_mesh {scalar_t__ mesh_sp_id; scalar_t__ sync_offset_clockdrift_max; int adjusting_tbtt; int sync_offset_lock; int wrkq_flags; } ;
struct TYPE_2__ {struct ieee80211_if_mesh mesh; } ;
struct ieee80211_sub_if_data {TYPE_1__ u; } ;


 int BUG_ON (int) ;
 scalar_t__ IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET ;
 int MESH_WORK_DRIFT_ADJUST ;
 scalar_t__ TOFFSET_MINIMUM_ADJUSTMENT ;
 int WARN_ON (int) ;
 int msync_dbg (struct ieee80211_sub_if_data*,char*,long long) ;
 int rcu_read_lock_held () ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mesh_sync_offset_adjust_tbtt(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_if_mesh *ifmsh = &sdata->u.mesh;

 WARN_ON(ifmsh->mesh_sp_id != IEEE80211_SYNC_METHOD_NEIGHBOR_OFFSET);
 BUG_ON(!rcu_read_lock_held());

 spin_lock_bh(&ifmsh->sync_offset_lock);

 if (ifmsh->sync_offset_clockdrift_max > TOFFSET_MINIMUM_ADJUSTMENT) {





  msync_dbg(sdata,
     "TBTT : kicking off TBTT adjustment with clockdrift_max=%lld\n",
     ifmsh->sync_offset_clockdrift_max);
  set_bit(MESH_WORK_DRIFT_ADJUST, &ifmsh->wrkq_flags);

  ifmsh->adjusting_tbtt = 1;
 } else {
  msync_dbg(sdata,
     "TBTT : max clockdrift=%lld; too small to adjust\n",
     (long long)ifmsh->sync_offset_clockdrift_max);
  ifmsh->sync_offset_clockdrift_max = 0;

  ifmsh->adjusting_tbtt = 0;
 }
 spin_unlock_bh(&ifmsh->sync_offset_lock);
}
