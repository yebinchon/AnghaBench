
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t ptr; unsigned char const* buf; int cbcmac; TYPE_2__** bctx; } ;
typedef TYPE_1__ br_ccm_context ;
struct TYPE_6__ {int (* mac ) (TYPE_2__**,int ,unsigned char const*,size_t) ;} ;


 int memcpy (unsigned char const*,unsigned char const*,size_t) ;
 int stub1 (TYPE_2__**,int ,unsigned char const*,int) ;
 int stub2 (TYPE_2__**,int ,unsigned char const*,size_t) ;

void
br_ccm_aad_inject(br_ccm_context *ctx, const void *data, size_t len)
{
 const unsigned char *dbuf;
 size_t ptr;

 dbuf = data;




 ptr = ctx->ptr;
 if (ptr != 0) {
  size_t clen;

  clen = (sizeof ctx->buf) - ptr;
  if (clen > len) {
   memcpy(ctx->buf + ptr, dbuf, len);
   ctx->ptr = ptr + len;
   return;
  }
  memcpy(ctx->buf + ptr, dbuf, clen);
  dbuf += clen;
  len -= clen;
  (*ctx->bctx)->mac(ctx->bctx, ctx->cbcmac,
   ctx->buf, sizeof ctx->buf);
 }




 ptr = len & 15;
 len -= ptr;
 (*ctx->bctx)->mac(ctx->bctx, ctx->cbcmac, dbuf, len);
 dbuf += len;




 memcpy(ctx->buf, dbuf, ptr);
 ctx->ptr = ptr;
}
