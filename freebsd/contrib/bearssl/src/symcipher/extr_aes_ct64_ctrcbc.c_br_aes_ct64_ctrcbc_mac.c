
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
 int br_dec32le (unsigned char const*) ;
 int br_enc32le (unsigned char*,int) ;
 int memset (int *,int ,int) ;

void
br_aes_ct64_ctrcbc_mac(const br_aes_ct64_ctrcbc_keys *ctx,
 void *cbcmac, const void *data, size_t len)
{
 const unsigned char *buf;
 uint32_t cm0, cm1, cm2, cm3;
 uint64_t q[8];
 uint64_t sk_exp[120];

 br_aes_ct64_skey_expand(sk_exp, ctx->num_rounds, ctx->skey);

 cm0 = br_dec32le((unsigned char *)cbcmac + 0);
 cm1 = br_dec32le((unsigned char *)cbcmac + 4);
 cm2 = br_dec32le((unsigned char *)cbcmac + 8);
 cm3 = br_dec32le((unsigned char *)cbcmac + 12);

 buf = data;
 memset(q, 0, sizeof q);
 while (len > 0) {
  uint32_t w[4];

  w[0] = cm0 ^ br_dec32le(buf + 0);
  w[1] = cm1 ^ br_dec32le(buf + 4);
  w[2] = cm2 ^ br_dec32le(buf + 8);
  w[3] = cm3 ^ br_dec32le(buf + 12);

  br_aes_ct64_interleave_in(&q[0], &q[4], w);
  br_aes_ct64_ortho(q);
  br_aes_ct64_bitslice_encrypt(ctx->num_rounds, sk_exp, q);
  br_aes_ct64_ortho(q);
  br_aes_ct64_interleave_out(w, q[0], q[4]);

  cm0 = w[0];
  cm1 = w[1];
  cm2 = w[2];
  cm3 = w[3];
  buf += 16;
  len -= 16;
 }

 br_enc32le((unsigned char *)cbcmac + 0, cm0);
 br_enc32le((unsigned char *)cbcmac + 4, cm1);
 br_enc32le((unsigned char *)cbcmac + 8, cm2);
 br_enc32le((unsigned char *)cbcmac + 12, cm3);
}
