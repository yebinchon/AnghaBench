
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;
struct nfs_open_context {TYPE_2__ lock_context; TYPE_1__* dentry; } ;
struct nfs_lock_context {struct nfs_open_context* open_context; int list; } ;
struct inode {int i_lock; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ENOMEM ;
 struct nfs_lock_context* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct nfs_lock_context* __nfs_find_lock_context (struct nfs_open_context*) ;
 int kfree (struct nfs_lock_context*) ;
 struct nfs_lock_context* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int nfs_init_lock_context (struct nfs_lock_context*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct nfs_lock_context *nfs_get_lock_context(struct nfs_open_context *ctx)
{
 struct nfs_lock_context *res, *new = ((void*)0);
 struct inode *inode = ctx->dentry->d_inode;

 spin_lock(&inode->i_lock);
 res = __nfs_find_lock_context(ctx);
 if (res == ((void*)0)) {
  spin_unlock(&inode->i_lock);
  new = kmalloc(sizeof(*new), GFP_KERNEL);
  if (new == ((void*)0))
   return ERR_PTR(-ENOMEM);
  nfs_init_lock_context(new);
  spin_lock(&inode->i_lock);
  res = __nfs_find_lock_context(ctx);
  if (res == ((void*)0)) {
   list_add_tail(&new->list, &ctx->lock_context.list);
   new->open_context = ctx;
   res = new;
   new = ((void*)0);
  }
 }
 spin_unlock(&inode->i_lock);
 kfree(new);
 return res;
}
