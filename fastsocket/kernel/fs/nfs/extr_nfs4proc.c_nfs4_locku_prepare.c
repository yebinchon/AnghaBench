
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {int * tk_action; } ;
struct TYPE_5__ {int seq_res; } ;
struct TYPE_6__ {int seqid; int seq_args; } ;
struct nfs4_unlockdata {TYPE_2__ res; TYPE_3__ arg; int server; int timestamp; TYPE_1__* lsp; } ;
struct TYPE_4__ {int ls_flags; } ;


 int NFS_LOCK_INITIALIZED ;
 int jiffies ;
 int nfs4_sequence_done (struct rpc_task*,int *) ;
 scalar_t__ nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;
 int nfs_release_seqid (int ) ;
 scalar_t__ nfs_wait_on_sequence (int ,struct rpc_task*) ;
 int rpc_call_start (struct rpc_task*) ;

__attribute__((used)) static void nfs4_locku_prepare(struct rpc_task *task, void *data)
{
 struct nfs4_unlockdata *calldata = data;

 if (nfs_wait_on_sequence(calldata->arg.seqid, task) != 0)
  goto out_wait;
 if ((calldata->lsp->ls_flags & NFS_LOCK_INITIALIZED) == 0) {

  goto out_no_action;
 }
 calldata->timestamp = jiffies;
 if (nfs4_setup_sequence(calldata->server,
    &calldata->arg.seq_args,
    &calldata->res.seq_res,
    task) != 0)
  nfs_release_seqid(calldata->arg.seqid);
 else
  rpc_call_start(task);
 return;
out_no_action:
 task->tk_action = ((void*)0);
out_wait:
 nfs4_sequence_done(task, &calldata->res.seq_res);
}
