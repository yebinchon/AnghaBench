
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int mode; int * state; } ;


 int nfs4_close_state (int *,int ) ;
 int nfs4_close_sync (int *,int ) ;

__attribute__((used)) static void nfs4_close_context(struct nfs_open_context *ctx, int is_sync)
{
 if (ctx->state == ((void*)0))
  return;
 if (is_sync)
  nfs4_close_sync(ctx->state, ctx->mode);
 else
  nfs4_close_state(ctx->state, ctx->mode);
}
