
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* head; int* cbcmac; int* ctr; int* nonce; scalar_t__ ptr; } ;
typedef TYPE_1__ br_eax_context ;


 int do_pad (TYPE_1__*) ;
 int memcpy (int*,int*,int) ;
 int omac_start (TYPE_1__*,int) ;

void
br_eax_flip(br_eax_context *ctx)
{
 int from_capture;






 from_capture = ctx->head[0];




 do_pad(ctx);
 memcpy(ctx->head, ctx->cbcmac, sizeof ctx->cbcmac);






 if (from_capture) {
  memcpy(ctx->cbcmac, ctx->ctr, sizeof ctx->cbcmac);
  ctx->ptr = 0;
 } else {
  omac_start(ctx, 2);
 }




 memcpy(ctx->ctr, ctx->nonce, sizeof ctx->nonce);
}
