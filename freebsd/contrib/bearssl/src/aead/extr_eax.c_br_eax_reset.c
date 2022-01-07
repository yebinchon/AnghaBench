
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* head; int cbcmac; int nonce; } ;
typedef TYPE_1__ br_eax_context ;


 int do_cbcmac_chunk (TYPE_1__*,void const*,size_t) ;
 int do_pad (TYPE_1__*) ;
 int memcpy (int ,int ,int) ;
 int omac_start (TYPE_1__*,int) ;

void
br_eax_reset(br_eax_context *ctx, const void *nonce, size_t len)
{



 omac_start(ctx, 0);
 do_cbcmac_chunk(ctx, nonce, len);
 do_pad(ctx);
 memcpy(ctx->nonce, ctx->cbcmac, sizeof ctx->cbcmac);




 omac_start(ctx, 1);





 ctx->head[0] = 0;
}
