
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct gss_cl_ctx* data; } ;
struct gss_cl_ctx {TYPE_1__ gc_wire_ctx; int gc_gss_ctx; } ;


 int dprintk (char*) ;
 int gss_delete_sec_context (int *) ;
 int kfree (struct gss_cl_ctx*) ;

__attribute__((used)) static void
gss_do_free_ctx(struct gss_cl_ctx *ctx)
{
 dprintk("RPC:       gss_free_ctx\n");

 gss_delete_sec_context(&ctx->gc_gss_ctx);
 kfree(ctx->gc_wire_ctx.data);
 kfree(ctx);
}
