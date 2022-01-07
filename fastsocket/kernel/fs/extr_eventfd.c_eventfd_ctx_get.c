
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventfd_ctx {int kref; } ;


 int kref_get (int *) ;

struct eventfd_ctx *eventfd_ctx_get(struct eventfd_ctx *ctx)
{
 kref_get(&ctx->kref);
 return ctx;
}
