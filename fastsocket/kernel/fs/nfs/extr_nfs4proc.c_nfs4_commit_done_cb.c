
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_commit_data {struct inode* inode; } ;
struct inode {int dummy; } ;


 int EAGAIN ;
 int NFS_SERVER (struct inode*) ;
 int nfs4_async_handle_error (struct rpc_task*,int ,int *) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;

__attribute__((used)) static int nfs4_commit_done_cb(struct rpc_task *task, struct nfs_commit_data *data)
{
 struct inode *inode = data->inode;

 if (nfs4_async_handle_error(task, NFS_SERVER(inode), ((void*)0)) == -EAGAIN) {
  rpc_restart_call_prepare(task);
  return -EAGAIN;
 }
 return 0;
}
