
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {int count; } ;
struct nfs_open_context {TYPE_2__* dentry; int * cred; TYPE_1__ lock_context; int list; } ;
struct inode {int i_lock; } ;
struct TYPE_6__ {int (* close_context ) (struct nfs_open_context*,int) ;} ;
struct TYPE_5__ {struct super_block* d_sb; struct inode* d_inode; } ;


 TYPE_3__* NFS_PROTO (struct inode*) ;
 int atomic_dec_and_lock (int *,int *) ;
 int atomic_dec_and_test (int *) ;
 int dput (TYPE_2__*) ;
 int kfree (struct nfs_open_context*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int nfs_sb_deactive (struct super_block*) ;
 int nfs_sb_deactive_async (struct super_block*) ;
 int put_rpccred (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nfs_open_context*,int) ;

__attribute__((used)) static void __put_nfs_open_context(struct nfs_open_context *ctx, int is_sync)
{
 struct inode *inode = ctx->dentry->d_inode;
 struct super_block *sb = ctx->dentry->d_sb;

 if (!list_empty(&ctx->list)) {
  if (!atomic_dec_and_lock(&ctx->lock_context.count, &inode->i_lock))
   return;
  list_del(&ctx->list);
  spin_unlock(&inode->i_lock);
 } else if (!atomic_dec_and_test(&ctx->lock_context.count))
  return;
 if (inode != ((void*)0))
  NFS_PROTO(inode)->close_context(ctx, is_sync);
 if (ctx->cred != ((void*)0))
  put_rpccred(ctx->cred);
 dput(ctx->dentry);
 if (is_sync)
  nfs_sb_deactive(sb);
 else
  nfs_sb_deactive_async(sb);
 kfree(ctx);
}
