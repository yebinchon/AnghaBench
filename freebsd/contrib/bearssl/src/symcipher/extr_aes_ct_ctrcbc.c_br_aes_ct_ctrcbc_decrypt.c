
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int num_rounds; int skey; } ;
typedef TYPE_1__ br_aes_ct_ctrcbc_keys ;


 int br_aes_ct_bitslice_encrypt (int ,int*,int*) ;
 int br_aes_ct_ortho (int*) ;
 int br_aes_ct_skey_expand (int*,int ,int ) ;
 int br_dec32be (unsigned char*) ;
 int br_dec32le (unsigned char*) ;
 int br_enc32be (unsigned char*,int) ;
 int br_enc32le (unsigned char*,int) ;
 int br_swap32 (int) ;
 int xorbuf (unsigned char*,unsigned char*,int) ;

void
br_aes_ct_ctrcbc_decrypt(const br_aes_ct_ctrcbc_keys *ctx,
 void *ctr, void *cbcmac, void *data, size_t len)
{
 unsigned char *buf;
 unsigned char *ivbuf;
 uint32_t iv0, iv1, iv2, iv3;
 uint32_t cm0, cm1, cm2, cm3;
 uint32_t sk_exp[120];

 br_aes_ct_skey_expand(sk_exp, ctx->num_rounds, ctx->skey);






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
 while (len > 0) {
  uint32_t q[8], carry;
  unsigned char tmp[16];





  q[0] = br_swap32(iv0);
  q[2] = br_swap32(iv1);
  q[4] = br_swap32(iv2);
  q[6] = br_swap32(iv3);
  iv3 ++;
  carry = ~(iv3 | -iv3) >> 31;
  iv2 += carry;
  carry &= -(~(iv2 | -iv2) >> 31);
  iv1 += carry;
  carry &= -(~(iv1 | -iv1) >> 31);
  iv0 += carry;




  q[1] = cm0 ^ br_dec32le(buf + 0);
  q[3] = cm1 ^ br_dec32le(buf + 4);
  q[5] = cm2 ^ br_dec32le(buf + 8);
  q[7] = cm3 ^ br_dec32le(buf + 12);

  br_aes_ct_ortho(q);
  br_aes_ct_bitslice_encrypt(ctx->num_rounds, sk_exp, q);
  br_aes_ct_ortho(q);

  br_enc32le(tmp + 0, q[0]);
  br_enc32le(tmp + 4, q[2]);
  br_enc32le(tmp + 8, q[4]);
  br_enc32le(tmp + 12, q[6]);
  xorbuf(buf, tmp, 16);
  cm0 = q[1];
  cm1 = q[3];
  cm2 = q[5];
  cm3 = q[7];
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
