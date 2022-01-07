
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_opt_ctx_t {int cpidx; int argc; int ** out; int argv; } ;


 int memmove (int **,int ,int) ;

int parse_options_end(struct parse_opt_ctx_t *ctx)
{
 memmove(ctx->out + ctx->cpidx, ctx->argv, ctx->argc * sizeof(*ctx->out));
 ctx->out[ctx->cpidx + ctx->argc] = ((void*)0);
 return ctx->cpidx + ctx->argc;
}
