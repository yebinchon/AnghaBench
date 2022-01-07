
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * rp; int * dp; } ;
struct TYPE_6__ {TYPE_3__ cpu; int * rp_stack; int * dp_stack; } ;
typedef TYPE_1__ br_skey_decoder_context ;


 int br_skey_decoder_init_main (TYPE_3__*) ;
 int br_skey_decoder_run (TYPE_3__*) ;
 int memset (TYPE_1__*,int ,int) ;

void
br_skey_decoder_init(br_skey_decoder_context *ctx)
{
 memset(ctx, 0, sizeof *ctx);
 ctx->cpu.dp = &ctx->dp_stack[0];
 ctx->cpu.rp = &ctx->rp_stack[0];
 br_skey_decoder_init_main(&ctx->cpu);
 br_skey_decoder_run(&ctx->cpu);
}
