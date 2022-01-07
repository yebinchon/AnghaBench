
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t ptr; size_t tag_len; int * cbcmac; int * tagmask; int buf; TYPE_2__** bctx; } ;
typedef TYPE_1__ br_ccm_context ;
struct TYPE_5__ {int (* mac ) (TYPE_2__**,int *,int ,int) ;} ;


 int memcpy (void*,int *,size_t) ;
 int memset (int ,int ,int) ;
 int stub1 (TYPE_2__**,int *,int ,int) ;

size_t
br_ccm_get_tag(br_ccm_context *ctx, void *tag)
{
 size_t ptr;
 size_t u;





 ptr = ctx->ptr;
 if (ptr != 0) {
  memset(ctx->buf + ptr, 0, (sizeof ctx->buf) - ptr);
  (*ctx->bctx)->mac(ctx->bctx, ctx->cbcmac,
   ctx->buf, sizeof ctx->buf);
 }




 for (u = 0; u < ctx->tag_len; u ++) {
  ctx->cbcmac[u] ^= ctx->tagmask[u];
 }
 memcpy(tag, ctx->cbcmac, ctx->tag_len);
 return ctx->tag_len;
}
