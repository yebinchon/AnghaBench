
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mesh_paths ;
 int mesh_table_free (int ,int) ;
 int mpp_paths ;
 int rcu_dereference_protected (int ,int) ;

void mesh_pathtbl_unregister(void)
{

 mesh_table_free(rcu_dereference_protected(mesh_paths, 1), 1);
 mesh_table_free(rcu_dereference_protected(mpp_paths, 1), 1);
}
