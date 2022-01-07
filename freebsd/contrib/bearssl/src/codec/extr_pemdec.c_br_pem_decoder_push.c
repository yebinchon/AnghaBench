
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t hlen; int cpu; void const* hbuf; scalar_t__ event; } ;
typedef TYPE_1__ br_pem_decoder_context ;


 int br_pem_decoder_run (int *) ;

size_t
br_pem_decoder_push(br_pem_decoder_context *ctx,
 const void *data, size_t len)
{
 if (ctx->event) {
  return 0;
 }
 ctx->hbuf = data;
 ctx->hlen = len;
 br_pem_decoder_run(&ctx->cpu);
 return len - ctx->hlen;
}
