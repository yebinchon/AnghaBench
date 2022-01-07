
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_7__ {int lock_context; TYPE_4__* context; int stateid; int seq_args; } ;
struct TYPE_6__ {int seq_res; } ;
struct nfs_write_data {TYPE_3__ args; TYPE_2__ res; TYPE_1__* ds_clp; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_5__ {int cl_session; } ;


 int EIO ;
 int FMODE_WRITE ;
 int NFS_CONTEXT_BAD ;
 scalar_t__ nfs41_setup_sequence (int ,int *,int *,struct rpc_task*) ;
 int nfs4_set_rw_stateid (int *,TYPE_4__*,int ,int ) ;
 int rpc_call_start (struct rpc_task*) ;
 int rpc_exit (struct rpc_task*,int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void filelayout_write_prepare(struct rpc_task *task, void *data)
{
 struct nfs_write_data *wdata = data;

 if (unlikely(test_bit(NFS_CONTEXT_BAD, &wdata->args.context->flags))) {
  rpc_exit(task, -EIO);
  return;
 }
 if (nfs41_setup_sequence(wdata->ds_clp->cl_session,
    &wdata->args.seq_args, &wdata->res.seq_res,
    task))
  return;

 rpc_call_start(task);
 nfs4_set_rw_stateid(&wdata->args.stateid, wdata->args.context,
   wdata->args.lock_context, FMODE_WRITE);
}
