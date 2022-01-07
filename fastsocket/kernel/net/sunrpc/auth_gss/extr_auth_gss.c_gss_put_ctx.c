
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_cl_ctx {int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int gss_free_ctx (struct gss_cl_ctx*) ;

__attribute__((used)) static inline void
gss_put_ctx(struct gss_cl_ctx *ctx)
{
 if (atomic_dec_and_test(&ctx->count))
  gss_free_ctx(ctx);
}
