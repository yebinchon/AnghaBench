
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task_setup {struct nfs4_unlockdata* callback_data; int flags; int workqueue; int * callback_ops; struct rpc_message* rpc_message; int rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {TYPE_3__* rpc_resp; TYPE_2__* rpc_argp; int rpc_cred; int * rpc_proc; } ;
struct nfs_seqid {int dummy; } ;
struct nfs_open_context {int cred; } ;
struct TYPE_6__ {int seq_res; } ;
struct TYPE_5__ {int seq_args; } ;
struct nfs4_unlockdata {TYPE_3__ res; TYPE_2__ arg; } ;
struct nfs4_lock_state {TYPE_1__* ls_state; } ;
struct file_lock {int fl_type; } ;
struct TYPE_4__ {int inode; } ;


 int ENOMEM ;
 struct rpc_task* ERR_PTR (int ) ;
 int F_UNLCK ;
 size_t NFSPROC4_CLNT_LOCKU ;
 int NFS_CLIENT (int ) ;
 int RPC_TASK_ASYNC ;
 int nfs41_init_sequence (int *,int *,int) ;
 struct nfs4_unlockdata* nfs4_alloc_unlockdata (struct file_lock*,struct nfs_open_context*,struct nfs4_lock_state*,struct nfs_seqid*) ;
 int nfs4_locku_ops ;
 int * nfs4_procedures ;
 int nfs_free_seqid (struct nfs_seqid*) ;
 int nfsiod_workqueue ;
 struct rpc_task* rpc_run_task (struct rpc_task_setup*) ;

__attribute__((used)) static struct rpc_task *nfs4_do_unlck(struct file_lock *fl,
  struct nfs_open_context *ctx,
  struct nfs4_lock_state *lsp,
  struct nfs_seqid *seqid)
{
 struct nfs4_unlockdata *data;
 struct rpc_message msg = {
  .rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LOCKU],
  .rpc_cred = ctx->cred,
 };
 struct rpc_task_setup task_setup_data = {
  .rpc_client = NFS_CLIENT(lsp->ls_state->inode),
  .rpc_message = &msg,
  .callback_ops = &nfs4_locku_ops,
  .workqueue = nfsiod_workqueue,
  .flags = RPC_TASK_ASYNC,
 };




 fl->fl_type = F_UNLCK;

 data = nfs4_alloc_unlockdata(fl, ctx, lsp, seqid);
 if (data == ((void*)0)) {
  nfs_free_seqid(seqid);
  return ERR_PTR(-ENOMEM);
 }

 nfs41_init_sequence(&data->arg.seq_args, &data->res.seq_res, 1);
 msg.rpc_argp = &data->arg;
 msg.rpc_resp = &data->res;
 task_setup_data.callback_data = data;
 return rpc_run_task(&task_setup_data);
}
