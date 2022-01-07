
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct nfs_open_dir_context {int cred; scalar_t__ dup_cookie; scalar_t__ dir_cookie; int attr_gencount; scalar_t__ duped; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int attr_gencount; } ;


 int ENOMEM ;
 struct nfs_open_dir_context* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 TYPE_1__* NFS_I (struct inode*) ;
 int get_rpccred (struct rpc_cred*) ;
 struct nfs_open_dir_context* kmalloc (int,int ) ;

__attribute__((used)) static struct nfs_open_dir_context *alloc_nfs_open_dir_context(struct inode *dir, struct rpc_cred *cred)
{
 struct nfs_open_dir_context *ctx;
 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (ctx != ((void*)0)) {
  ctx->duped = 0;
  ctx->attr_gencount = NFS_I(dir)->attr_gencount;
  ctx->dir_cookie = 0;
  ctx->dup_cookie = 0;
  ctx->cred = get_rpccred(cred);
  return ctx;
 }
 return ERR_PTR(-ENOMEM);
}
