
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int * parent_ctx; } ;


 int put_ctx (int *) ;

__attribute__((used)) static void unclone_ctx(struct perf_event_context *ctx)
{
 if (ctx->parent_ctx) {
  put_ctx(ctx->parent_ctx);
  ctx->parent_ctx = ((void*)0);
 }
}
