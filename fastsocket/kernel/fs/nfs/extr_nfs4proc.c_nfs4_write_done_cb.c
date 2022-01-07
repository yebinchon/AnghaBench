
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_6__ {TYPE_2__* context; } ;
struct nfs_write_data {int fattr; int timestamp; TYPE_3__ args; TYPE_1__* header; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {struct inode* inode; } ;


 int EAGAIN ;
 int NFS_SERVER (struct inode*) ;
 int nfs4_async_handle_error (struct rpc_task*,int ,int ) ;
 int nfs_post_op_update_inode_force_wcc (struct inode*,int *) ;
 int renew_lease (int ,int ) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;

__attribute__((used)) static int nfs4_write_done_cb(struct rpc_task *task, struct nfs_write_data *data)
{
 struct inode *inode = data->header->inode;

 if (nfs4_async_handle_error(task, NFS_SERVER(inode), data->args.context->state) == -EAGAIN) {
  rpc_restart_call_prepare(task);
  return -EAGAIN;
 }
 if (task->tk_status >= 0) {
  renew_lease(NFS_SERVER(inode), data->timestamp);
  nfs_post_op_update_inode_force_wcc(inode, &data->fattr);
 }
 return 0;
}
