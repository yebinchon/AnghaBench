
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct TYPE_2__ {struct nfs_open_context* open_context; } ;
struct nfs_open_context {int list; TYPE_1__ lock_context; scalar_t__ error; scalar_t__ flags; int mode; int * state; int cred; int dentry; } ;
struct dentry {int d_sb; } ;
typedef int fmode_t ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dget (struct dentry*) ;
 int get_rpccred (struct rpc_cred*) ;
 struct nfs_open_context* kmalloc (int,int ) ;
 int nfs_init_lock_context (TYPE_1__*) ;
 int nfs_sb_active (int ) ;

struct nfs_open_context *alloc_nfs_open_context(struct dentry *dentry, struct rpc_cred *cred, fmode_t f_mode)
{
 struct nfs_open_context *ctx;

 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (ctx != ((void*)0)) {
  nfs_sb_active(dentry->d_sb);
  ctx->dentry = dget(dentry);
  ctx->cred = get_rpccred(cred);
  ctx->state = ((void*)0);
  ctx->mode = f_mode;
  ctx->flags = 0;
  ctx->error = 0;
  nfs_init_lock_context(&ctx->lock_context);
  ctx->lock_context.open_context = ctx;
  INIT_LIST_HEAD(&ctx->list);
 }
 return ctx;
}
