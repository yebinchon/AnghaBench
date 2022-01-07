
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int num_rounds; int skey; } ;
typedef TYPE_1__ br_aes_ct64_ctr_keys ;


 int br_aes_ct64_bitslice_encrypt (int ,int *,int *) ;
 int br_aes_ct64_interleave_in (int *,int *,int*) ;
 int br_aes_ct64_interleave_out (int*,int ,int ) ;
 int br_aes_ct64_ortho (int *) ;
 int br_aes_ct64_skey_expand (int *,int ,int ) ;
 int br_range_dec32le (int*,int,void const*) ;
 int br_range_enc32le (unsigned char*,int*,int) ;
 int br_swap32 (int) ;
 int memcpy (int*,int*,int) ;
 int xorbuf (unsigned char*,unsigned char*,int) ;

uint32_t
br_aes_ct64_ctr_run(const br_aes_ct64_ctr_keys *ctx,
 const void *iv, uint32_t cc, void *data, size_t len)
{
 unsigned char *buf;
 uint32_t ivw[16];
 uint64_t sk_exp[120];

 br_aes_ct64_skey_expand(sk_exp, ctx->num_rounds, ctx->skey);
 br_range_dec32le(ivw, 3, iv);
 memcpy(ivw + 4, ivw, 3 * sizeof(uint32_t));
 memcpy(ivw + 8, ivw, 3 * sizeof(uint32_t));
 memcpy(ivw + 12, ivw, 3 * sizeof(uint32_t));
 buf = data;
 while (len > 0) {
  uint64_t q[8];
  uint32_t w[16];
  unsigned char tmp[64];
  int i;





  memcpy(w, ivw, sizeof ivw);
  w[3] = br_swap32(cc);
  w[7] = br_swap32(cc + 1);
  w[11] = br_swap32(cc + 2);
  w[15] = br_swap32(cc + 3);
  for (i = 0; i < 4; i ++) {
   br_aes_ct64_interleave_in(
    &q[i], &q[i + 4], w + (i << 2));
  }
  br_aes_ct64_ortho(q);
  br_aes_ct64_bitslice_encrypt(ctx->num_rounds, sk_exp, q);
  br_aes_ct64_ortho(q);
  for (i = 0; i < 4; i ++) {
   br_aes_ct64_interleave_out(
    w + (i << 2), q[i], q[i + 4]);
  }
  br_range_enc32le(tmp, w, 16);
  if (len <= 64) {
   xorbuf(buf, tmp, len);
   cc += (uint32_t)len >> 4;
   break;
  }
  xorbuf(buf, tmp, 64);
  buf += 64;
  len -= 64;
  cc += 4;
 }
 return cc;
}
