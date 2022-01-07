
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_commit_data {int inode; } ;
struct TYPE_2__ {int (* commit_rpc_prepare ) (struct rpc_task*,struct nfs_commit_data*) ;} ;


 TYPE_1__* NFS_PROTO (int ) ;
 int stub1 (struct rpc_task*,struct nfs_commit_data*) ;

void nfs_commit_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs_commit_data *data = calldata;

 NFS_PROTO(data->inode)->commit_rpc_prepare(task, data);
}
