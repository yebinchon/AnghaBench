
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_open_context {int list; } ;
struct inode {int i_lock; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {int * private_data; TYPE_2__ f_path; } ;
struct TYPE_6__ {int open_files; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 TYPE_3__* NFS_I (struct inode*) ;
 int list_move_tail (int *,int *) ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 int put_nfs_open_context_sync (struct nfs_open_context*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_file_clear_open_context(struct file *filp)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct nfs_open_context *ctx = nfs_file_open_context(filp);

 if (ctx) {
  filp->private_data = ((void*)0);
  spin_lock(&inode->i_lock);
  list_move_tail(&ctx->list, &NFS_I(inode)->open_files);
  spin_unlock(&inode->i_lock);
  put_nfs_open_context_sync(ctx);
 }
}
