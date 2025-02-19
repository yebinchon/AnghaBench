
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {int flags; } ;
struct nfs_open_context {int mode; TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int open_files; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int FMODE_WRITE ;
 TYPE_2__* NFS_I (struct inode*) ;
 int NFS_MOUNT_NOCTO ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int list_empty (int *) ;
 int nfs_revalidate_inode (struct nfs_server*,struct inode*) ;

void nfs_close_context(struct nfs_open_context *ctx, int is_sync)
{
 struct inode *inode;
 struct nfs_server *server;

 if (!(ctx->mode & FMODE_WRITE))
  return;
 if (!is_sync)
  return;
 inode = ctx->dentry->d_inode;
 if (!list_empty(&NFS_I(inode)->open_files))
  return;
 server = NFS_SERVER(inode);
 if (server->flags & NFS_MOUNT_NOCTO)
  return;
 nfs_revalidate_inode(server, inode);
}
