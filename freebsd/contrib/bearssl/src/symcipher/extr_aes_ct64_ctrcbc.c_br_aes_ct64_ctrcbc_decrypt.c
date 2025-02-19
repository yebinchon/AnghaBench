
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int num_rounds; int skey; } ;
typedef TYPE_1__ br_aes_ct64_ctrcbc_keys ;


 int br_aes_ct64_bitslice_encrypt (int ,int *,int *) ;
 int br_aes_ct64_interleave_in (int *,int *,int*) ;
 int br_aes_ct64_interleave_out (int*,int ,int ) ;
 int br_aes_ct64_ortho (int *) ;
 int br_aes_ct64_skey_expand (int *,int ,int ) ;
 int br_dec32be (unsigned char*) ;
 int br_dec32le (unsigned char*) ;
 int br_enc32be (unsigned char*,int) ;
 int br_enc32le (unsigned char*,int) ;
 int br_swap32 (int) ;
 int memset (int *,int ,int) ;
 int xorbuf (unsigned char*,unsigned char*,int) ;

void
br_aes_ct64_ctrcbc_decrypt(const br_aes_ct64_ctrcbc_keys *ctx,
 void *ctr, void *cbcmac, void *data, size_t len)
{
 unsigned char *buf;
 unsigned char *ivbuf;
 uint32_t iv0, iv1, iv2, iv3;
 uint32_t cm0, cm1, cm2, cm3;
 uint64_t sk_exp[120];
 uint64_t q[8];

 br_aes_ct64_skey_expand(sk_exp, ctx->num_rounds, ctx->skey);






 ivbuf = ctr;
 iv0 = br_dec32be(ivbuf + 0);
 iv1 = br_dec32be(ivbuf + 4);
 iv2 = br_dec32be(ivbuf + 8);
 iv3 = br_dec32be(ivbuf + 12);




 cm0 = br_dec32le((unsigned char *)cbcmac + 0);
 cm1 = br_dec32le((unsigned char *)cbcmac + 4);
 cm2 = br_dec32le((unsigned char *)cbcmac + 8);
 cm3 = br_dec32le((unsigned char *)cbcmac + 12);

 buf = data;
 memset(q, 0, sizeof q);
 while (len > 0) {
  uint32_t w[8], carry;
  unsigned char tmp[16];





  w[0] = br_swap32(iv0);
  w[1] = br_swap32(iv1);
  w[2] = br_swap32(iv2);
  w[3] = br_swap32(iv3);
  iv3 ++;
  carry = ~(iv3 | -iv3) >> 31;
  iv2 += carry;
  carry &= -(~(iv2 | -iv2) >> 31);
  iv1 += carry;
  carry &= -(~(iv1 | -iv1) >> 31);
  iv0 += carry;




  w[4] = cm0 ^ br_dec32le(buf + 0);
  w[5] = cm1 ^ br_dec32le(buf + 4);
  w[6] = cm2 ^ br_dec32le(buf + 8);
  w[7] = cm3 ^ br_dec32le(buf + 12);

  br_aes_ct64_interleave_in(&q[0], &q[4], w);
  br_aes_ct64_interleave_in(&q[1], &q[5], w + 4);
  br_aes_ct64_ortho(q);
  br_aes_ct64_bitslice_encrypt(ctx->num_rounds, sk_exp, q);
  br_aes_ct64_ortho(q);
  br_aes_ct64_interleave_out(w, q[0], q[4]);
  br_aes_ct64_interleave_out(w + 4, q[1], q[5]);

  br_enc32le(tmp + 0, w[0]);
  br_enc32le(tmp + 4, w[1]);
  br_enc32le(tmp + 8, w[2]);
  br_enc32le(tmp + 12, w[3]);
  xorbuf(buf, tmp, 16);
  cm0 = w[4];
  cm1 = w[5];
  cm2 = w[6];
  cm3 = w[7];
  buf += 16;
  len -= 16;
 }

 br_enc32be(ivbuf + 0, iv0);
 br_enc32be(ivbuf + 4, iv1);
 br_enc32be(ivbuf + 8, iv2);
 br_enc32be(ivbuf + 12, iv3);
 br_enc32le((unsigned char *)cbcmac + 0, cm0);
 br_enc32le((unsigned char *)cbcmac + 4, cm1);
 br_enc32le((unsigned char *)cbcmac + 8, cm2);
 br_enc32le((unsigned char *)cbcmac + 12, cm3);
}
