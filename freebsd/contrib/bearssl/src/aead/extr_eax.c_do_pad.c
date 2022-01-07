
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t ptr; unsigned char* L2; int* buf; unsigned char* L4; int cbcmac; TYPE_2__** bctx; } ;
typedef TYPE_1__ br_eax_context ;
struct TYPE_5__ {int (* mac ) (TYPE_2__**,int ,unsigned char*,int) ;} ;


 int memset (int ,int,int) ;
 int stub1 (TYPE_2__**,int ,unsigned char*,int) ;

__attribute__((used)) static void
do_pad(br_eax_context *ctx)
{
 unsigned char *pad;
 size_t ptr, u;

 ptr = ctx->ptr;
 if (ptr == 16) {
  pad = ctx->L2;
 } else {
  ctx->buf[ptr ++] = 0x80;
  memset(ctx->buf + ptr, 0x00, 16 - ptr);
  pad = ctx->L4;
 }
 for (u = 0; u < sizeof ctx->buf; u ++) {
  ctx->buf[u] ^= pad[u];
 }
 (*ctx->bctx)->mac(ctx->bctx, ctx->cbcmac, ctx->buf, sizeof ctx->buf);
}
