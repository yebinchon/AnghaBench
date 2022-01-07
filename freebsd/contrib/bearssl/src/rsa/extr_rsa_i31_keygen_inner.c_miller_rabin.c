
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int br_prng_class ;
typedef int (* br_i31_modpow_opt_type ) (int*,unsigned char*,size_t,int const*,int,int*,size_t) ;


 int const EQ0 (int const) ;
 int br_i31_encode (unsigned char*,size_t,int const*) ;
 int br_i31_ninv31 (int const) ;
 int mkrand (int const**,int*,int) ;

__attribute__((used)) static uint32_t
miller_rabin(const br_prng_class **rng, const uint32_t *x, int n,
 uint32_t *t, size_t tlen, br_i31_modpow_opt_type mp31)
{
 unsigned char *xm1d2;
 size_t xlen, xm1d2_len, xm1d2_len_u32, u;
 uint32_t asize;
 unsigned cc;
 uint32_t x0i;




 xm1d2 = (unsigned char *)t;
 xm1d2_len = ((x[0] - (x[0] >> 5)) + 7) >> 3;
 br_i31_encode(xm1d2, xm1d2_len, x);
 cc = 0;
 for (u = 0; u < xm1d2_len; u ++) {
  unsigned w;

  w = xm1d2[u];
  xm1d2[u] = (unsigned char)((w >> 1) | cc);
  cc = w << 7;
 }




 xm1d2_len_u32 = (xm1d2_len + 3) >> 2;
 t += xm1d2_len_u32;
 tlen -= xm1d2_len_u32;

 xlen = (x[0] + 31) >> 5;
 asize = x[0] - 1 - EQ0(x[0] & 31);
 x0i = br_i31_ninv31(x[1]);
 while (n -- > 0) {
  uint32_t *a, *t2;
  uint32_t eq1, eqm1;
  size_t t2len;






  a = t;
  a[0] = x[0];
  a[xlen] = 0;
  mkrand(rng, a, asize);






  t2 = t + 1 + xlen;
  t2len = tlen - 1 - xlen;
  if ((t2len & 1) != 0) {






   t2 ++;
   t2len --;
  }
  mp31(a, xm1d2, xm1d2_len, x, x0i, t2, t2len);






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
