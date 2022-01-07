
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_5__ {size_t tag_len; unsigned char* cbcmac; int* buf; int ptr; unsigned int* ctr; unsigned char* tagmask; TYPE_2__** bctx; } ;
typedef TYPE_1__ br_ccm_context ;
struct TYPE_6__ {int (* ctr ) (TYPE_2__**,unsigned char*,unsigned char*,int) ;int (* mac ) (TYPE_2__**,unsigned char*,unsigned char*,int) ;} ;


 int br_enc16be (int*,unsigned int) ;
 int br_enc32be (int*,int ) ;
 int br_enc64be (int*,int) ;
 int memcpy (unsigned char*,void const*,size_t) ;
 int memset (unsigned char*,int ,int) ;
 int stub1 (TYPE_2__**,unsigned char*,unsigned char*,int) ;
 int stub2 (TYPE_2__**,unsigned char*,unsigned char*,int) ;

int
br_ccm_reset(br_ccm_context *ctx, const void *nonce, size_t nonce_len,
 uint64_t aad_len, uint64_t data_len, size_t tag_len)
{
 unsigned char tmp[16];
 unsigned u, q;

 if (nonce_len < 7 || nonce_len > 13) {
  return 0;
 }
 if (tag_len < 4 || tag_len > 16 || (tag_len & 1) != 0) {
  return 0;
 }
 q = 15 - (unsigned)nonce_len;
 ctx->tag_len = tag_len;




 tmp[0] = (aad_len > 0 ? 0x40 : 0x00)
  | (((unsigned)tag_len - 2) << 2)
  | (q - 1);
 memcpy(tmp + 1, nonce, nonce_len);
 for (u = 0; u < q; u ++) {
  tmp[15 - u] = (unsigned char)data_len;
  data_len >>= 8;
 }
 if (data_len != 0) {





  return 0;
 }




 memset(ctx->cbcmac, 0, sizeof ctx->cbcmac);
 (*ctx->bctx)->mac(ctx->bctx, ctx->cbcmac, tmp, sizeof tmp);




 if ((aad_len >> 32) != 0) {
  ctx->buf[0] = 0xFF;
  ctx->buf[1] = 0xFF;
  br_enc64be(ctx->buf + 2, aad_len);
  ctx->ptr = 10;
 } else if (aad_len >= 0xFF00) {
  ctx->buf[0] = 0xFF;
  ctx->buf[1] = 0xFE;
  br_enc32be(ctx->buf + 2, (uint32_t)aad_len);
  ctx->ptr = 6;
 } else if (aad_len > 0) {
  br_enc16be(ctx->buf, (unsigned)aad_len);
  ctx->ptr = 2;
 } else {
  ctx->ptr = 0;
 }




 ctx->ctr[0] = q - 1;
 memcpy(ctx->ctr + 1, nonce, nonce_len);
 memset(ctx->ctr + 1 + nonce_len, 0, q);
 memset(ctx->tagmask, 0, sizeof ctx->tagmask);
 (*ctx->bctx)->ctr(ctx->bctx, ctx->ctr,
  ctx->tagmask, sizeof ctx->tagmask);

 return 1;
}
