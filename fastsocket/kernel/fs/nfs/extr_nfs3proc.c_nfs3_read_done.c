
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_read_data {int fattr; TYPE_1__* header; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* inode; } ;


 int EAGAIN ;
 scalar_t__ nfs3_async_handle_jukebox (struct rpc_task*,struct inode*) ;
 int nfs_invalidate_atime (struct inode*) ;
 int nfs_refresh_inode (struct inode*,int *) ;

__attribute__((used)) static int nfs3_read_done(struct rpc_task *task, struct nfs_read_data *data)
{
 struct inode *inode = data->header->inode;

 if (nfs3_async_handle_jukebox(task, inode))
  return -EAGAIN;

 nfs_invalidate_atime(inode);
 nfs_refresh_inode(inode, &data->fattr);
 return 0;
}
