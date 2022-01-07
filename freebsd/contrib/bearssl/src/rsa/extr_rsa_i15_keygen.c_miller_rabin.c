
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int br_prng_class ;


 int const EQ0 (int const) ;
 int br_i15_encode (unsigned char*,size_t,int const*) ;
 int br_i15_modpow_opt (int*,unsigned char*,size_t,int const*,int,int*,size_t) ;
 int br_i15_ninv15 (int const) ;
 int mkrand (int const**,int*,int) ;

__attribute__((used)) static uint32_t
miller_rabin(const br_prng_class **rng, const uint16_t *x, int n,
 uint16_t *t, size_t tlen)
{
 unsigned char *xm1d2;
 size_t xlen, xm1d2_len, xm1d2_len_u16, u;
 uint32_t asize;
 unsigned cc;
 uint16_t x0i;




 xm1d2 = (unsigned char *)t;
 xm1d2_len = ((x[0] - (x[0] >> 4)) + 7) >> 3;
 br_i15_encode(xm1d2, xm1d2_len, x);
 cc = 0;
 for (u = 0; u < xm1d2_len; u ++) {
  unsigned w;

  w = xm1d2[u];
  xm1d2[u] = (unsigned char)((w >> 1) | cc);
  cc = w << 7;
 }




 xm1d2_len_u16 = (xm1d2_len + 1) >> 1;
 t += xm1d2_len_u16;
 tlen -= xm1d2_len_u16;

 xlen = (x[0] + 15) >> 4;
 asize = x[0] - 1 - EQ0(x[0] & 15);
 x0i = br_i15_ninv15(x[1]);
 while (n -- > 0) {
  uint16_t *a;
  uint32_t eq1, eqm1;






  a = t;
  a[0] = x[0];
  a[xlen] = 0;
  mkrand(rng, a, asize);






  br_i15_modpow_opt(a, xm1d2, xm1d2_len,
   x, x0i, t + 1 + xlen, tlen - 1 - xlen);






  eq1 = a[1] ^ 1;
  eqm1 = a[1] ^ (x[1] - 1);
  for (u = 2; u <= xlen; u ++) {
   eq1 |= a[u];
   eqm1 |= a[u] ^ x[u];
  }

  if ((EQ0(eq1) | EQ0(eqm1)) == 0) {
   return 0;
  }
 }
 return 1;
}
