
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int br_hmac_drbg_context ;


 int br_hmac_drbg_generate (int *,unsigned char*,size_t) ;
 int br_hmac_drbg_init (int *,int *,char*,int) ;
 int br_i15_decode (int *,unsigned char*,size_t) ;
 int br_i15_decode_mod (int *,unsigned char*,size_t,int *) ;
 int br_i15_encode (unsigned char*,size_t,int *) ;
 int br_i15_modpow_opt (int *,unsigned char*,size_t,int *,int ,int *,int) ;
 int br_i15_ninv15 (int ) ;
 int br_i31_decode (int *,unsigned char*,size_t) ;
 int br_i31_decode_mod (int *,unsigned char*,size_t,int *) ;
 int br_i31_encode (unsigned char*,size_t,int *) ;
 int br_i31_ninv31 (int ) ;
 int br_i62_modpow_opt (int *,unsigned char*,size_t,int *,int ,int *,int) ;
 int br_sha256_vtable ;
 int check_equals (char*,unsigned char*,unsigned char*,size_t) ;
 int fflush (int ) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void
test_modpow_i62(void)
{
 br_hmac_drbg_context hc;
 int k;

 printf("Test ModPow/i62: ");

 br_hmac_drbg_init(&hc, &br_sha256_vtable, "seed modpow", 11);
 for (k = 10; k <= 500; k ++) {
  size_t blen;
  unsigned char bm[128], bx[128], bx1[128], bx2[128];
  unsigned char be[128];
  unsigned mask;
  uint32_t x1[35], m1[35];
  uint16_t x2[70], m2[70];
  uint64_t tmp1[500];
  uint16_t tmp2[2000];

  blen = (k + 7) >> 3;
  br_hmac_drbg_generate(&hc, bm, blen);
  br_hmac_drbg_generate(&hc, bx, blen);
  br_hmac_drbg_generate(&hc, be, blen);
  bm[blen - 1] |= 0x01;
  mask = 0xFF >> ((int)(blen << 3) - k);
  bm[0] &= mask;
  bm[0] |= (mask - (mask >> 1));
  bx[0] &= (mask >> 1);

  br_i31_decode(m1, bm, blen);
  br_i31_decode_mod(x1, bx, blen, m1);
  br_i62_modpow_opt(x1, be, blen, m1, br_i31_ninv31(m1[1]),
   tmp1, (sizeof tmp1) / (sizeof tmp1[0]));
  br_i31_encode(bx1, blen, x1);

  br_i15_decode(m2, bm, blen);
  br_i15_decode_mod(x2, bx, blen, m2);
  br_i15_modpow_opt(x2, be, blen, m2, br_i15_ninv15(m2[1]),
   tmp2, (sizeof tmp2) / (sizeof tmp2[0]));
  br_i15_encode(bx2, blen, x2);

  check_equals("ModPow i62/i15", bx1, bx2, blen);

  printf(".");
  fflush(stdout);
 }

 printf(" done.\n");
 fflush(stdout);
}
