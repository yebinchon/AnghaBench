
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_dir_context {int cred; } ;


 int kfree (struct nfs_open_dir_context*) ;
 int put_rpccred (int ) ;

__attribute__((used)) static void put_nfs_open_dir_context(struct nfs_open_dir_context *ctx)
{
 put_rpccred(ctx->cred);
 kfree(ctx);
}
