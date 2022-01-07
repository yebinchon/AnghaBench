
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_6__ {scalar_t__ count; int eof; TYPE_4__* fattr; } ;
struct TYPE_7__ {scalar_t__ offset; } ;
struct nfs_read_data {TYPE_2__ res; TYPE_3__ args; TYPE_1__* header; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_5__ {struct inode* inode; } ;


 int EAGAIN ;
 scalar_t__ nfs_async_handle_expired_key (struct rpc_task*) ;
 int nfs_invalidate_atime (struct inode*) ;
 int nfs_refresh_inode (struct inode*,TYPE_4__*) ;

__attribute__((used)) static int nfs_read_done(struct rpc_task *task, struct nfs_read_data *data)
{
 struct inode *inode = data->header->inode;

 if (nfs_async_handle_expired_key(task))
  return -EAGAIN;

 nfs_invalidate_atime(inode);
 if (task->tk_status >= 0) {
  nfs_refresh_inode(inode, data->res.fattr);



  if (data->args.offset + data->res.count >= data->res.fattr->size)
   data->res.eof = 1;
 }
 return 0;
}
