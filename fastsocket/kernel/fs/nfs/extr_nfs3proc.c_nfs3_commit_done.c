
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_2__ {int fattr; } ;
struct nfs_commit_data {TYPE_1__ res; int inode; } ;


 int EAGAIN ;
 scalar_t__ nfs3_async_handle_jukebox (struct rpc_task*,int ) ;
 int nfs_refresh_inode (int ,int ) ;

__attribute__((used)) static int nfs3_commit_done(struct rpc_task *task, struct nfs_commit_data *data)
{
 if (nfs3_async_handle_jukebox(task, data->inode))
  return -EAGAIN;
 nfs_refresh_inode(data->inode, data->res.fattr);
 return 0;
}
