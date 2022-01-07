
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_6__ {int lock_context; int context; int stateid; int seq_args; } ;
struct TYPE_5__ {int seq_res; } ;
struct nfs_read_data {TYPE_3__ args; TYPE_2__ res; TYPE_1__* header; } ;
struct TYPE_4__ {int inode; } ;


 int FMODE_READ ;
 int NFS_SERVER (int ) ;
 int nfs4_set_rw_stateid (int *,int ,int ,int ) ;
 scalar_t__ nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;
 int rpc_call_start (struct rpc_task*) ;

__attribute__((used)) static void nfs4_proc_read_rpc_prepare(struct rpc_task *task, struct nfs_read_data *data)
{
 if (nfs4_setup_sequence(NFS_SERVER(data->header->inode),
    &data->args.seq_args,
    &data->res.seq_res,
    task))
  return;
 rpc_call_start(task);
 nfs4_set_rw_stateid(&data->args.stateid, data->args.context,
   data->args.lock_context, FMODE_READ);
}
