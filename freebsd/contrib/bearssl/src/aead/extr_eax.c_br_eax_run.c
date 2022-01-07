
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t ptr; unsigned char* buf; int ctr; TYPE_2__** bctx; int cbcmac; } ;
typedef TYPE_1__ br_eax_context ;
struct TYPE_8__ {int (* ctr ) (TYPE_2__**,int ,unsigned int*,int) ;int (* decrypt ) (TYPE_2__**,int ,int ,unsigned char*,size_t) ;int (* encrypt ) (TYPE_2__**,int ,int ,unsigned char*,size_t) ;int (* mac ) (TYPE_2__**,int ,unsigned int*,int) ;} ;


 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned int*,int ,int) ;
 int stub1 (TYPE_2__**,int ,unsigned int*,int) ;
 int stub2 (TYPE_2__**,int ,int ,unsigned char*,size_t) ;
 int stub3 (TYPE_2__**,int ,int ,unsigned char*,size_t) ;
 int stub4 (TYPE_2__**,int ,unsigned int*,int) ;

void
br_eax_run(br_eax_context *ctx, int encrypt, void *data, size_t len)
{
 unsigned char *dbuf;
 size_t ptr;




 if (len == 0) {
  return;
 }

 dbuf = data;
 ptr = ctx->ptr;






 if (ptr != 0 && ptr != 16) {



  size_t u, clen;

  clen = 16 - ptr;
  if (len <= clen) {
   clen = len;
  }
  if (encrypt) {
   for (u = 0; u < clen; u ++) {
    ctx->buf[ptr + u] ^= dbuf[u];
   }
   memcpy(dbuf, ctx->buf + ptr, clen);
  } else {
   for (u = 0; u < clen; u ++) {
    unsigned dx, sx;

    sx = ctx->buf[ptr + u];
    dx = dbuf[u];
    ctx->buf[ptr + u] = dx;
    dbuf[u] = sx ^ dx;
   }
  }

  if (len <= clen) {
   ctx->ptr = ptr + clen;
   return;
  }
  dbuf += clen;
  len -= clen;
 }






 if (ptr != 0) {
  (*ctx->bctx)->mac(ctx->bctx, ctx->cbcmac,
   ctx->buf, sizeof ctx->buf);
 }





 ptr = len & (size_t)15;
 if (ptr == 0) {
  len -= 16;
  ptr = 16;
 } else {
  len -= ptr;
 }
 if (encrypt) {
  (*ctx->bctx)->encrypt(ctx->bctx, ctx->ctr, ctx->cbcmac,
   dbuf, len);
 } else {
  (*ctx->bctx)->decrypt(ctx->bctx, ctx->ctr, ctx->cbcmac,
   dbuf, len);
 }
 dbuf += len;





 memset(ctx->buf, 0, sizeof ctx->buf);
 (*ctx->bctx)->ctr(ctx->bctx, ctx->ctr, ctx->buf, sizeof ctx->buf);
 if (encrypt) {
  size_t u;

  for (u = 0; u < ptr; u ++) {
   ctx->buf[u] ^= dbuf[u];
  }
  memcpy(dbuf, ctx->buf, ptr);
 } else {
  size_t u;

  for (u = 0; u < ptr; u ++) {
   unsigned dx, sx;

   sx = ctx->buf[u];
   dx = dbuf[u];
   ctx->buf[u] = dx;
   dbuf[u] = sx ^ dx;
  }
 }
 ctx->ptr = ptr;
}
