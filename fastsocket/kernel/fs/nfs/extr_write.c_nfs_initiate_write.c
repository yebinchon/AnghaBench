
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rpc_task_setup {int priority; int flags; int workqueue; struct nfs_write_data* callback_data; struct rpc_call_ops const* callback_ops; struct rpc_message* rpc_message; TYPE_2__* task; struct rpc_clnt* rpc_client; } ;
struct rpc_task {int tk_status; } ;
struct rpc_message {int rpc_cred; int * rpc_resp; TYPE_4__* rpc_argp; } ;
struct rpc_clnt {int dummy; } ;
struct rpc_call_ops {int dummy; } ;
struct TYPE_9__ {scalar_t__ offset; int count; } ;
struct TYPE_7__ {int tk_pid; } ;
struct nfs_write_data {TYPE_4__ args; TYPE_2__ task; TYPE_1__* header; int res; } ;
struct inode {TYPE_3__* i_sb; } ;
struct TYPE_10__ {int (* write_setup ) (struct nfs_write_data*,struct rpc_message*) ;} ;
struct TYPE_8__ {int s_id; } ;
struct TYPE_6__ {int cred; struct inode* inode; } ;


 int FLUSH_SYNC ;
 scalar_t__ IS_ERR (struct rpc_task*) ;
 scalar_t__ NFS_FILEID (struct inode*) ;
 TYPE_5__* NFS_PROTO (struct inode*) ;
 int PTR_ERR (struct rpc_task*) ;
 int RPC_TASK_ASYNC ;
 int dprintk (char*,int ,int ,long long,int ,unsigned long long) ;
 int flush_task_priority (int) ;
 int nfsiod_workqueue ;
 int rpc_put_task (struct rpc_task*) ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;
 int rpc_wait_for_completion_task (struct rpc_task*) ;
 int stub1 (struct nfs_write_data*,struct rpc_message*) ;

int nfs_initiate_write(struct rpc_clnt *clnt,
         struct nfs_write_data *data,
         const struct rpc_call_ops *call_ops,
         int how)
{
 struct inode *inode = data->header->inode;
 int priority = flush_task_priority(how);
 struct rpc_task *task;
 struct rpc_message msg = {
  .rpc_argp = &data->args,
  .rpc_resp = &data->res,
  .rpc_cred = data->header->cred,
 };
 struct rpc_task_setup task_setup_data = {
  .rpc_client = clnt,
  .task = &data->task,
  .rpc_message = &msg,
  .callback_ops = call_ops,
  .callback_data = data,
  .workqueue = nfsiod_workqueue,
  .flags = RPC_TASK_ASYNC,
  .priority = priority,
 };
 int ret = 0;


 NFS_PROTO(inode)->write_setup(data, &msg);

 dprintk("NFS: %5u initiated write call "
  "(req %s/%lld, %u bytes @ offset %llu)\n",
  data->task.tk_pid,
  inode->i_sb->s_id,
  (long long)NFS_FILEID(inode),
  data->args.count,
  (unsigned long long)data->args.offset);

 task = rpc_run_task(&task_setup_data);
 if (IS_ERR(task)) {
  ret = PTR_ERR(task);
  goto out;
 }
 if (how & FLUSH_SYNC) {
  ret = rpc_wait_for_completion_task(task);
  if (ret == 0)
   ret = task->tk_status;
 }
 rpc_put_task(task);
out:
 return ret;
}
