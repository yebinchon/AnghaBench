
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_cl_ctx {int count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline struct gss_cl_ctx *
gss_get_ctx(struct gss_cl_ctx *ctx)
{
 atomic_inc(&ctx->count);
 return ctx;
}
