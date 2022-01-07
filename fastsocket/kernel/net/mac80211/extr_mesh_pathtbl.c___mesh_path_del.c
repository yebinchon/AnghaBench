
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpath_node {int rcu; int list; struct mesh_path* mpath; } ;
struct mesh_table {int entries; } ;
struct mesh_path {int state_lock; scalar_t__ is_gate; int flags; } ;


 int MESH_PATH_RESOLVING ;
 int atomic_dec (int *) ;
 int call_rcu (int *,int ) ;
 int hlist_del_rcu (int *) ;
 int mesh_gate_del (struct mesh_table*,struct mesh_path*) ;
 int mesh_path_node_reclaim ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __mesh_path_del(struct mesh_table *tbl, struct mpath_node *node)
{
 struct mesh_path *mpath;
 mpath = node->mpath;
 spin_lock(&mpath->state_lock);
 mpath->flags |= MESH_PATH_RESOLVING;
 if (mpath->is_gate)
  mesh_gate_del(tbl, mpath);
 hlist_del_rcu(&node->list);
 call_rcu(&node->rcu, mesh_path_node_reclaim);
 spin_unlock(&mpath->state_lock);
 atomic_dec(&tbl->entries);
}
