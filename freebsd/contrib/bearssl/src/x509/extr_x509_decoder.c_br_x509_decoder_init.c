
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * rp; int * dp; } ;
struct TYPE_6__ {void (* append_dn ) (void*,void const*,size_t) ;TYPE_3__ cpu; int * rp_stack; int * dp_stack; void* append_dn_ctx; } ;
typedef TYPE_1__ br_x509_decoder_context ;


 int br_x509_decoder_init_main (TYPE_3__*) ;
 int br_x509_decoder_run (TYPE_3__*) ;
 int memset (TYPE_1__*,int ,int) ;

void
br_x509_decoder_init(br_x509_decoder_context *ctx,
 void (*append_dn)(void *ctx, const void *buf, size_t len),
 void *append_dn_ctx)
{
 memset(ctx, 0, sizeof *ctx);





 ctx->append_dn = append_dn;
 ctx->append_dn_ctx = append_dn_ctx;
 ctx->cpu.dp = &ctx->dp_stack[0];
 ctx->cpu.rp = &ctx->rp_stack[0];
 br_x509_decoder_init_main(&ctx->cpu);
 br_x509_decoder_run(&ctx->cpu);
}
