
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t hlen; int cpu; void const* hbuf; } ;
typedef TYPE_1__ br_skey_decoder_context ;


 int br_skey_decoder_run (int *) ;

void
br_skey_decoder_push(br_skey_decoder_context *ctx,
 const void *data, size_t len)
{
 ctx->hbuf = data;
 ctx->hlen = len;
 br_skey_decoder_run(&ctx->cpu);
}
