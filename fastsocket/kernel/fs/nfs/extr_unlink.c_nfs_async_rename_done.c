
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct nfs_renamedata {struct dentry* old_dentry; struct inode* new_dir; struct inode* old_dir; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* rename_done ) (struct rpc_task*,struct inode*,struct inode*) ;} ;


 TYPE_1__* NFS_PROTO (struct inode*) ;
 int nfs_cancel_async_unlink (struct dentry*) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;
 int stub1 (struct rpc_task*,struct inode*,struct inode*) ;

__attribute__((used)) static void nfs_async_rename_done(struct rpc_task *task, void *calldata)
{
 struct nfs_renamedata *data = calldata;
 struct inode *old_dir = data->old_dir;
 struct inode *new_dir = data->new_dir;
 struct dentry *old_dentry = data->old_dentry;

 if (!NFS_PROTO(old_dir)->rename_done(task, old_dir, new_dir)) {
  rpc_restart_call_prepare(task);
  return;
 }

 if (task->tk_status != 0)
  nfs_cancel_async_unlink(old_dentry);
}
