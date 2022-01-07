
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int nfs40_handle_cb_pathdown (struct nfs_client*) ;
 int nfs4_schedule_state_manager (struct nfs_client*) ;

void nfs4_schedule_path_down_recovery(struct nfs_client *clp)
{
 nfs40_handle_cb_pathdown(clp);
 nfs4_schedule_state_manager(clp);
}
