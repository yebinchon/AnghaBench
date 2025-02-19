
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task_setup {int flags; int workqueue; struct nfs4_opendata* callback_data; int * callback_ops; struct rpc_message* rpc_message; int rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int rpc_cred; int * rpc_resp; int * rpc_argp; int * rpc_proc; } ;
struct nfs_server {int client; } ;
struct nfs4_opendata {int rpc_status; int cancelled; int timestamp; scalar_t__ rpc_done; int kref; TYPE_2__* owner; int c_res; int c_arg; TYPE_1__* dir; } ;
struct TYPE_4__ {int so_cred; } ;
struct TYPE_3__ {int d_inode; } ;


 scalar_t__ IS_ERR (struct rpc_task*) ;
 size_t NFSPROC4_CLNT_OPEN_CONFIRM ;
 struct nfs_server* NFS_SERVER (int ) ;
 int PTR_ERR (struct rpc_task*) ;
 int RPC_TASK_ASYNC ;
 int jiffies ;
 int kref_get (int *) ;
 int nfs4_open_confirm_ops ;
 int * nfs4_procedures ;
 int nfs4_wait_for_completion_rpc_task (struct rpc_task*) ;
 int nfsiod_workqueue ;
 int rpc_put_task (struct rpc_task*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int smp_wmb () ;

__attribute__((used)) static int _nfs4_proc_open_confirm(struct nfs4_opendata *data)
{
 struct nfs_server *server = NFS_SERVER(data->dir->d_inode);
 struct rpc_task *task;
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_OPEN_CONFIRM],
  .rpc_argp = &data->c_arg,
  .rpc_resp = &data->c_res,
  .rpc_cred = data->owner->so_cred,
 };
 struct rpc_task_setup task_setup_data = {
  .rpc_client = server->client,
  .rpc_message = &msg,
  .callback_ops = &nfs4_open_confirm_ops,
  .callback_data = data,
  .workqueue = nfsiod_workqueue,
  .flags = RPC_TASK_ASYNC,
 };
 int status;

 kref_get(&data->kref);
 data->rpc_done = 0;
 data->rpc_status = 0;
 data->timestamp = jiffies;
 task = rpc_run_task(&task_setup_data);
 if (IS_ERR(task))
  return PTR_ERR(task);
 status = nfs4_wait_for_completion_rpc_task(task);
 if (status != 0) {
  data->cancelled = 1;
  smp_wmb();
 } else
  status = data->rpc_status;
 rpc_put_task(task);
 return status;
}
