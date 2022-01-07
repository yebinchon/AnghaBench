
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {scalar_t__ cl_cons_state; int cl_state; } ;


 int NFS4CLNT_MANAGER_RUNNING ;
 int TASK_KILLABLE ;
 int might_sleep () ;
 int nfs_wait_bit_killable ;
 int wait_on_bit (int *,int ,int ,int ) ;

int nfs4_wait_clnt_recover(struct nfs_client *clp)
{
 int res;

 might_sleep();

 res = wait_on_bit(&clp->cl_state, NFS4CLNT_MANAGER_RUNNING,
   nfs_wait_bit_killable, TASK_KILLABLE);
 if (res)
  return res;

 if (clp->cl_cons_state < 0)
  return clp->cl_cons_state;
 return 0;
}
