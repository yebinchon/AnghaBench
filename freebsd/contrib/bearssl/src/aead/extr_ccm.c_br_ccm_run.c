
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t ptr; unsigned int* buf; int ctr; TYPE_2__** bctx; int cbcmac; } ;
typedef TYPE_1__ br_ccm_context ;
struct TYPE_8__ {int (* ctr ) (TYPE_2__**,int ,unsigned int*,int) ;int (* encrypt ) (TYPE_2__**,int ,int ,unsigned char*,size_t) ;int (* decrypt ) (TYPE_2__**,int ,int ,unsigned char*,size_t) ;int (* mac ) (TYPE_2__**,int ,unsigned int*,int) ;} ;


 int memset (unsigned int*,int ,int) ;
 int stub1 (TYPE_2__**,int ,unsigned int*,int) ;
 int stub2 (TYPE_2__**,int ,int ,unsigned char*,size_t) ;
 int stub3 (TYPE_2__**,int ,int ,unsigned char*,size_t) ;
 int stub4 (TYPE_2__**,int ,unsigned int*,int) ;

void
br_ccm_run(br_ccm_context *ctx, int encrypt, void *data, size_t len)
{
 unsigned char *dbuf;
 size_t ptr;

 dbuf = data;






 ptr = ctx->ptr;
 if (ptr != 0) {
  size_t clen;
  size_t u;

  clen = (sizeof ctx->buf) - ptr;
  if (clen > len) {
   clen = len;
  }
  if (encrypt) {
   for (u = 0; u < clen; u ++) {
    unsigned w, x;

    w = ctx->buf[ptr + u];
    x = dbuf[u];
    ctx->buf[ptr + u] = x;
    dbuf[u] = w ^ x;
   }
  } else {
   for (u = 0; u < clen; u ++) {
    unsigned w;

    w = ctx->buf[ptr + u] ^ dbuf[u];
    dbuf[u] = w;
    ctx->buf[ptr + u] = w;
   }
  }
  dbuf += clen;
  len -= clen;
  ptr += clen;
  if (ptr < sizeof ctx->buf) {
   ctx->ptr = ptr;
   return;
  }
  (*ctx->bctx)->mac(ctx->bctx,
   ctx->cbcmac, ctx->buf, sizeof ctx->buf);
 }
 ptr = len & 15;
 len -= ptr;
 if (encrypt) {
  (*ctx->bctx)->decrypt(ctx->bctx, ctx->ctr, ctx->cbcmac,
   dbuf, len);
 } else {
  (*ctx->bctx)->encrypt(ctx->bctx, ctx->ctr, ctx->cbcmac,
   dbuf, len);
 }
 dbuf += len;





 if (ptr != 0) {
  size_t u;

  memset(ctx->buf, 0, sizeof ctx->buf);
  (*ctx->bctx)->ctr(ctx->bctx, ctx->ctr,
   ctx->buf, sizeof ctx->buf);
  if (encrypt) {
   for (u = 0; u < ptr; u ++) {
    unsigned w, x;

    w = ctx->buf[u];
    x = dbuf[u];
    ctx->buf[u] = x;
    dbuf[u] = w ^ x;
   }
  } else {
   for (u = 0; u < ptr; u ++) {
    unsigned w;

    w = ctx->buf[u] ^ dbuf[u];
    dbuf[u] = w;
    ctx->buf[u] = w;
   }
  }
 }
 ctx->ptr = ptr;
}
