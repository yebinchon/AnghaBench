
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_open_context {int list; } ;
struct nfs_inode {int open_files; } ;
struct inode {int i_lock; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int private_data; TYPE_2__ f_path; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int get_nfs_open_context (struct nfs_open_context*) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_file_set_open_context(struct file *filp, struct nfs_open_context *ctx)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct nfs_inode *nfsi = NFS_I(inode);

 filp->private_data = get_nfs_open_context(ctx);
 spin_lock(&inode->i_lock);
 list_add(&ctx->list, &nfsi->open_files);
 spin_unlock(&inode->i_lock);
}
