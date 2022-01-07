
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
struct nfs_read_data {TYPE_3__ args; TYPE_2__ res; TYPE_1__* ds_clp; int read_done_cb; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_5__ {int cl_session; } ;


 int EIO ;
 int FMODE_READ ;
 int NFS_CONTEXT_BAD ;
 int filelayout_read_done_cb ;
 scalar_t__ nfs41_setup_sequence (int ,int *,int *,struct rpc_task*) ;
 int nfs4_set_rw_stateid (int *,TYPE_4__*,int ,int ) ;
 int rpc_call_start (struct rpc_task*) ;
 int rpc_exit (struct rpc_task*,int ) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void filelayout_read_prepare(struct rpc_task *task, void *data)
{
 struct nfs_read_data *rdata = data;

 if (unlikely(test_bit(NFS_CONTEXT_BAD, &rdata->args.context->flags))) {
  rpc_exit(task, -EIO);
  return;
 }
 rdata->read_done_cb = filelayout_read_done_cb;

 if (nfs41_setup_sequence(rdata->ds_clp->cl_session,
    &rdata->args.seq_args, &rdata->res.seq_res,
    task))
  return;

 rpc_call_start(task);
 nfs4_set_rw_stateid(&rdata->args.stateid, rdata->args.context,
   rdata->args.lock_context, FMODE_READ);
}
