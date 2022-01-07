
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * st; } ;
typedef TYPE_1__ br_eax_state ;
struct TYPE_9__ {scalar_t__ ptr; int cbcmac; int head; int nonce; int ctr; } ;
typedef TYPE_2__ br_eax_context ;


 int do_cbcmac_chunk (TYPE_2__*,void const*,size_t) ;
 int do_pad (TYPE_2__*) ;
 int memcpy (int ,int ,int) ;
 int omac_start (TYPE_2__*,int ) ;

void
br_eax_reset_post_aad(br_eax_context *ctx, const br_eax_state *st,
 const void *nonce, size_t len)
{
 if (len == 0) {
  omac_start(ctx, 0);
 } else {
  memcpy(ctx->cbcmac, st->st[0], sizeof ctx->cbcmac);
  ctx->ptr = 0;
  do_cbcmac_chunk(ctx, nonce, len);
 }
 do_pad(ctx);
 memcpy(ctx->nonce, ctx->cbcmac, sizeof ctx->cbcmac);
 memcpy(ctx->ctr, ctx->nonce, sizeof ctx->nonce);

 memcpy(ctx->head, st->st[1], sizeof ctx->head);

 memcpy(ctx->cbcmac, st->st[2], sizeof ctx->cbcmac);
 ctx->ptr = 0;
}
