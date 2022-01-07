
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct mesh_path {int sn; int state_lock; int flags; scalar_t__ exp_time; scalar_t__ hop_count; scalar_t__ metric; } ;


 int MESH_PATH_FIXED ;
 int mesh_path_activate (struct mesh_path*) ;
 int mesh_path_assign_nexthop (struct mesh_path*,struct sta_info*) ;
 int mesh_path_tx_pending (struct mesh_path*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mesh_path_fix_nexthop(struct mesh_path *mpath, struct sta_info *next_hop)
{
 spin_lock_bh(&mpath->state_lock);
 mesh_path_assign_nexthop(mpath, next_hop);
 mpath->sn = 0xffff;
 mpath->metric = 0;
 mpath->hop_count = 0;
 mpath->exp_time = 0;
 mpath->flags |= MESH_PATH_FIXED;
 mesh_path_activate(mpath);
 spin_unlock_bh(&mpath->state_lock);
 mesh_path_tx_pending(mpath);
}
