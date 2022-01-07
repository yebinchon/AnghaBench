
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {unsigned int* buf; scalar_t__ count_ctr; int jc; int j0_1; TYPE_2__** bctx; int h; int y; int (* gh ) (int ,int ,unsigned char*,size_t) ;} ;
typedef TYPE_1__ br_gcm_context ;
struct TYPE_6__ {int (* run ) (TYPE_2__**,int ,int ,unsigned int*,int) ;} ;


 int memset (unsigned int*,int ,int) ;
 int stub1 (int ,int ,unsigned int*,int) ;
 int stub2 (int ,int ,unsigned char*,size_t) ;
 int stub3 (TYPE_2__**,int ,int ,unsigned char*,size_t) ;
 int stub4 (int ,int ,unsigned char*,size_t) ;
 int stub5 (TYPE_2__**,int ,int ,unsigned int*,int) ;

void
br_gcm_run(br_gcm_context *ctx, int encrypt, void *data, size_t len)
{
 unsigned char *buf;
 size_t ptr, dlen;

 buf = data;
 ptr = (size_t)ctx->count_ctr & (size_t)15;
 if (ptr != 0) {



  size_t u, clen;

  clen = 16 - ptr;
  if (len < clen) {
   clen = len;
  }
  for (u = 0; u < clen; u ++) {
   unsigned x, y;

   x = buf[u];
   y = x ^ ctx->buf[ptr + u];
   ctx->buf[ptr + u] = encrypt ? y : x;
   buf[u] = y;
  }
  ctx->count_ctr += (uint64_t)clen;
  buf += clen;
  len -= clen;
  if (ptr + clen < 16) {
   return;
  }
  ctx->gh(ctx->y, ctx->h, ctx->buf, 16);
 }




 dlen = len & ~(size_t)15;
 if (!encrypt) {
  ctx->gh(ctx->y, ctx->h, buf, dlen);
 }
 ctx->jc = (*ctx->bctx)->run(ctx->bctx, ctx->j0_1, ctx->jc, buf, dlen);
 if (encrypt) {
  ctx->gh(ctx->y, ctx->h, buf, dlen);
 }
 buf += dlen;
 len -= dlen;
 ctx->count_ctr += (uint64_t)dlen;

 if (len > 0) {



  size_t u;

  memset(ctx->buf, 0, sizeof ctx->buf);
  ctx->jc = (*ctx->bctx)->run(ctx->bctx, ctx->j0_1,
   ctx->jc, ctx->buf, 16);
  for (u = 0; u < len; u ++) {
   unsigned x, y;

   x = buf[u];
   y = x ^ ctx->buf[u];
   ctx->buf[u] = encrypt ? y : x;
   buf[u] = y;
  }
  ctx->count_ctr += (uint64_t)len;
 }
}
