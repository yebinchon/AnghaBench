
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {void const* buf; scalar_t__ count_aad; int h; int y; int (* gh ) (int ,int ,void const*,size_t) ;} ;
typedef TYPE_1__ br_gcm_context ;


 int memcpy (void const*,unsigned char const*,size_t) ;
 int stub1 (int ,int ,void const*,int) ;
 int stub2 (int ,int ,void const*,size_t) ;

void
br_gcm_aad_inject(br_gcm_context *ctx, const void *data, size_t len)
{
 size_t ptr, dlen;

 ptr = (size_t)ctx->count_aad & (size_t)15;
 if (ptr != 0) {




  size_t clen;

  clen = 16 - ptr;
  if (len < clen) {
   memcpy(ctx->buf + ptr, data, len);
   ctx->count_aad += (uint64_t)len;
   return;
  }
  memcpy(ctx->buf + ptr, data, clen);
  ctx->gh(ctx->y, ctx->h, ctx->buf, 16);
  data = (const unsigned char *)data + clen;
  len -= clen;
  ctx->count_aad += (uint64_t)clen;
 }






 dlen = len & ~(size_t)15;
 ctx->gh(ctx->y, ctx->h, data, dlen);
 memcpy(ctx->buf, (const unsigned char *)data + dlen, len - dlen);
 ctx->count_aad += (uint64_t)len;
}
