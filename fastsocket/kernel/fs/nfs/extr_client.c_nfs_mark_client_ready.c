
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_cons_state; } ;


 int nfs_client_active_wq ;
 int wake_up_all (int *) ;

void nfs_mark_client_ready(struct nfs_client *clp, int state)
{
 clp->cl_cons_state = state;
 wake_up_all(&nfs_client_active_wq);
}
