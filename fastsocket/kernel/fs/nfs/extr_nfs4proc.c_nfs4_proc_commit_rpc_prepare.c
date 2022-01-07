
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_4__ {int seq_res; } ;
struct TYPE_3__ {int seq_args; } ;
struct nfs_commit_data {TYPE_2__ res; TYPE_1__ args; int inode; } ;


 int NFS_SERVER (int ) ;
 scalar_t__ nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;
 int rpc_call_start (struct rpc_task*) ;

__attribute__((used)) static void nfs4_proc_commit_rpc_prepare(struct rpc_task *task, struct nfs_commit_data *data)
{
 if (nfs4_setup_sequence(NFS_SERVER(data->inode),
    &data->args.seq_args,
    &data->res.seq_res,
    task))
  return;
 rpc_call_start(task);
}
