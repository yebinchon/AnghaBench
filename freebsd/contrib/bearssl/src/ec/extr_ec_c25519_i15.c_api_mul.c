
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef unsigned char uint16_t ;


 unsigned char* C255_A24 ;
 int* C255_P ;
 unsigned char* C255_R2 ;
 size_t ILEN ;
 int NOT (int ) ;
 int P0I ;
 int br_i15_decode_mod (unsigned char*,unsigned char*,int,unsigned char*) ;
 int br_i15_encode (unsigned char*,int,unsigned char*) ;
 int br_i15_montymul (unsigned char*,unsigned char*,unsigned char*,int*,int ) ;
 int br_i15_sub (unsigned char*,int*,int ) ;
 int br_i15_zero (unsigned char*,int) ;
 int byteswap (unsigned char*) ;
 int c255_add (unsigned char*,unsigned char*,unsigned char*) ;
 int c255_mul (unsigned char*,unsigned char*,unsigned char*) ;
 int c255_sub (unsigned char*,unsigned char*,unsigned char*) ;
 int cswap (unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char const*,size_t) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static uint32_t
api_mul(unsigned char *G, size_t Glen,
 const unsigned char *kb, size_t kblen, int curve)
{






 uint16_t x1[18], x2[18], x3[18], z2[18], z3[18];
 uint16_t a[19], aa[18], b[19], bb[18];
 uint16_t c[18], d[18], e[18], da[18], cb[18];
 unsigned char k[32];
 uint32_t swap;
 int i;

 (void)curve;







 if (Glen != 32 || kblen > 32) {
  return 0;
 }
 G[31] &= 0x7F;





 byteswap(G);
 br_i15_zero(b, 0x111);
 b[18] = 1;
 br_i15_decode_mod(a, G, 32, b);
 a[0] = 0x110;
 br_i15_sub(a, C255_P, NOT(br_i15_sub(a, C255_P, 0)));





 br_i15_montymul(x1, a, C255_R2, C255_P, P0I);
 memcpy(x3, x1, (18 * sizeof(uint16_t)));
 br_i15_zero(z2, C255_P[0]);
 memcpy(x2, z2, (18 * sizeof(uint16_t)));
 x2[1] = 19;
 memcpy(z3, x2, (18 * sizeof(uint16_t)));

 memset(k, 0, (sizeof k) - kblen);
 memcpy(k + (sizeof k) - kblen, kb, kblen);
 k[31] &= 0xF8;
 k[0] &= 0x7F;
 k[0] |= 0x40;





 swap = 0;
 for (i = 254; i >= 0; i --) {
  uint32_t kt;

  kt = (k[31 - (i >> 3)] >> (i & 7)) & 1;
  swap ^= kt;
  cswap(x2, x3, swap);
  cswap(z2, z3, swap);
  swap = kt;
  c255_add(a, x2, z2);
  c255_mul(aa, a, a);
  c255_sub(b, x2, z2);
  c255_mul(bb, b, b);
  c255_sub(e, aa, bb);
  c255_add(c, x3, z3);
  c255_sub(d, x3, z3);
  c255_mul(da, d, a);
  c255_mul(cb, c, b);
  c255_add(x3, da, cb);
  c255_mul(x3, x3, x3);
  c255_sub(z3, da, cb);
  c255_mul(z3, z3, z3);
  c255_mul(z3, z3, x1);
  c255_mul(x2, aa, bb);
  c255_mul(z2, C255_A24, e);
  c255_add(z2, z2, aa);
  c255_mul(z2, e, z2);







 }
 cswap(x2, x3, swap);
 cswap(z2, z3, swap);






 memcpy(a, z2, (18 * sizeof(uint16_t)));
 for (i = 0; i < 15; i ++) {
  c255_mul(a, a, a);
  c255_mul(a, a, z2);
 }
 memcpy(b, a, (18 * sizeof(uint16_t)));
 for (i = 0; i < 14; i ++) {
  int j;

  for (j = 0; j < 16; j ++) {
   c255_mul(b, b, b);
  }
  c255_mul(b, b, a);
 }
 for (i = 14; i >= 0; i --) {
  c255_mul(b, b, b);
  if ((0xFFEB >> i) & 1) {
   c255_mul(b, z2, b);
  }
 }
 c255_mul(b, x2, b);







 br_i15_zero(a, C255_P[0]);
 a[1] = 1;
 br_i15_montymul(x2, a, b, C255_P, P0I);

 br_i15_encode(G, 32, x2);
 byteswap(G);
 return 1;


}
