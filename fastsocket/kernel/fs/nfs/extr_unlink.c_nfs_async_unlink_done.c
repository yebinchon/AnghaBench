
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_unlinkdata {struct inode* dir; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int (* unlink_done ) (struct rpc_task*,struct inode*) ;} ;


 TYPE_1__* NFS_PROTO (struct inode*) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;
 int stub1 (struct rpc_task*,struct inode*) ;

__attribute__((used)) static void nfs_async_unlink_done(struct rpc_task *task, void *calldata)
{
 struct nfs_unlinkdata *data = calldata;
 struct inode *dir = data->dir;

 if (!NFS_PROTO(dir)->unlink_done(task, dir))
  rpc_restart_call_prepare(task);
}
