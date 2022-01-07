
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_open_context {TYPE_1__* dentry; } ;
struct nfs_lock_context {int list; int count; struct nfs_open_context* open_context; } ;
struct inode {int i_lock; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int atomic_dec_and_lock (int *,int *) ;
 int kfree (struct nfs_lock_context*) ;
 int list_del (int *) ;
 int spin_unlock (int *) ;

void nfs_put_lock_context(struct nfs_lock_context *l_ctx)
{
 struct nfs_open_context *ctx = l_ctx->open_context;
 struct inode *inode = ctx->dentry->d_inode;

 if (!atomic_dec_and_lock(&l_ctx->count, &inode->i_lock))
  return;
 list_del(&l_ctx->list);
 spin_unlock(&inode->i_lock);
 kfree(l_ctx);
}
