
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int j0_2; int jc; unsigned char* y; scalar_t__ count_ctr; scalar_t__ count_aad; int j0_1; int h; int (* gh ) (unsigned char*,int ,unsigned char*,int) ;} ;
typedef TYPE_1__ br_gcm_context ;


 int br_dec32be (unsigned char*) ;
 int br_enc64be (unsigned char*,int) ;
 int memcpy (int ,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (unsigned char*,int ,void const*,size_t) ;
 int stub2 (unsigned char*,int ,unsigned char*,int) ;

void
br_gcm_reset(br_gcm_context *ctx, const void *iv, size_t len)
{
 if (len == 12) {
  memcpy(ctx->j0_1, iv, 12);
  ctx->j0_2 = 1;
 } else {
  unsigned char ty[16], tmp[16];

  memset(ty, 0, sizeof ty);
  ctx->gh(ty, ctx->h, iv, len);
  memset(tmp, 0, 8);
  br_enc64be(tmp + 8, (uint64_t)len << 3);
  ctx->gh(ty, ctx->h, tmp, 16);
  memcpy(ctx->j0_1, ty, 12);
  ctx->j0_2 = br_dec32be(ty + 12);
 }
 ctx->jc = ctx->j0_2 + 1;
 memset(ctx->y, 0, sizeof ctx->y);
 ctx->count_aad = 0;
 ctx->count_ctr = 0;
}
