
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct nfs_client {int cl_rpcclient; int cl_count; int cl_state; } ;


 int IS_ERR (struct task_struct*) ;
 int NFS4CLNT_MANAGER_RUNNING ;
 int RPC_DISPLAY_ADDR ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int atomic_inc (int *) ;
 struct task_struct* kthread_run (int ,struct nfs_client*,char*,int ) ;
 int module_put (int ) ;
 int nfs4_clear_state_manager_bit (struct nfs_client*) ;
 int nfs4_run_state_manager ;
 int nfs_put_client (struct nfs_client*) ;
 int rpc_peeraddr2str (int ,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void nfs4_schedule_state_manager(struct nfs_client *clp)
{
 struct task_struct *task;

 if (test_and_set_bit(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state) != 0)
  return;
 __module_get(THIS_MODULE);
 atomic_inc(&clp->cl_count);
 task = kthread_run(nfs4_run_state_manager, clp, "%s-manager",
    rpc_peeraddr2str(clp->cl_rpcclient,
       RPC_DISPLAY_ADDR));
 if (!IS_ERR(task))
  return;
 nfs4_clear_state_manager_bit(clp);
 nfs_put_client(clp);
 module_put(THIS_MODULE);
}
