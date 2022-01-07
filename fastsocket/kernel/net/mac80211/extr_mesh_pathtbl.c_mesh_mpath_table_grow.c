
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {int rcu_head; scalar_t__ size_order; } ;


 int __mesh_table_free (struct mesh_table*) ;
 int call_rcu (int *,int ) ;
 int mesh_paths ;
 struct mesh_table* mesh_table_alloc (scalar_t__) ;
 int mesh_table_free_rcu ;
 scalar_t__ mesh_table_grow (struct mesh_table*,struct mesh_table*) ;
 int pathtbl_resize_lock ;
 int rcu_assign_pointer (int ,struct mesh_table*) ;
 struct mesh_table* resize_dereference_mesh_paths () ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void mesh_mpath_table_grow(void)
{
 struct mesh_table *oldtbl, *newtbl;

 write_lock_bh(&pathtbl_resize_lock);
 oldtbl = resize_dereference_mesh_paths();
 newtbl = mesh_table_alloc(oldtbl->size_order + 1);
 if (!newtbl)
  goto out;
 if (mesh_table_grow(oldtbl, newtbl) < 0) {
  __mesh_table_free(newtbl);
  goto out;
 }
 rcu_assign_pointer(mesh_paths, newtbl);

 call_rcu(&oldtbl->rcu_head, mesh_table_free_rcu);

 out:
 write_unlock_bh(&pathtbl_resize_lock);
}
