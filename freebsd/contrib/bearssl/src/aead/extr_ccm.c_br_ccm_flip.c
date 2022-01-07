
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t ptr; int buf; int cbcmac; TYPE_2__** bctx; } ;
typedef TYPE_1__ br_ccm_context ;
struct TYPE_5__ {int (* mac ) (TYPE_2__**,int ,int ,int) ;} ;


 int memset (int ,int ,int) ;
 int stub1 (TYPE_2__**,int ,int ,int) ;

void
br_ccm_flip(br_ccm_context *ctx)
{
 size_t ptr;




 ptr = ctx->ptr;
 if (ptr != 0) {
  memset(ctx->buf + ptr, 0, (sizeof ctx->buf) - ptr);
  (*ctx->bctx)->mac(ctx->bctx, ctx->cbcmac,
   ctx->buf, sizeof ctx->buf);
  ctx->ptr = 0;
 }




}
