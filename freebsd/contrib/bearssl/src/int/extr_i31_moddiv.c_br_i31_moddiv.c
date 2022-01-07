
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;


 int EQ0 (int) ;
 int NOT (int) ;
 int co_reduce (int*,int*,size_t,int,int,int,int) ;
 int co_reduce_mod (int*,int*,size_t,int,int,int,int,int const*,int) ;
 int memcpy (int*,int const*,size_t) ;
 int memset (int*,int ,size_t) ;

uint32_t
br_i31_moddiv(uint32_t *x, const uint32_t *y, const uint32_t *m, uint32_t m0i,
 uint32_t *t)
{
 size_t len, k;
 uint32_t *a, *b, *u, *v;
 uint32_t num, r;

 len = (m[0] + 31) >> 5;
 a = t;
 b = a + len;
 u = x + 1;
 v = b + len;
 memcpy(a, y + 1, len * sizeof *y);
 memcpy(b, m + 1, len * sizeof *m);
 memset(v, 0, len * sizeof *v);





 for (num = ((m[0] - (m[0] >> 5)) << 1) + 30; num >= 30; num -= 30) {
  size_t j;
  uint32_t c0, c1;
  uint32_t a0, a1, b0, b1;
  uint64_t a_hi, b_hi;
  uint32_t a_lo, b_lo;
  int64_t pa, pb, qa, qb;
  int i;
  c0 = (uint32_t)-1;
  c1 = (uint32_t)-1;
  a0 = 0;
  a1 = 0;
  b0 = 0;
  b1 = 0;
  j = len;
  while (j -- > 0) {
   uint32_t aw, bw;

   aw = a[j];
   bw = b[j];
   a0 ^= (a0 ^ aw) & c0;
   a1 ^= (a1 ^ aw) & c1;
   b0 ^= (b0 ^ bw) & c0;
   b1 ^= (b1 ^ bw) & c1;
   c1 = c0;
   c0 &= (((aw | bw) + 0x7FFFFFFF) >> 31) - (uint32_t)1;
  }







  a1 |= a0 & c1;
  a0 &= ~c1;
  b1 |= b0 & c1;
  b0 &= ~c1;
  a_hi = ((uint64_t)a0 << 31) + a1;
  b_hi = ((uint64_t)b0 << 31) + b1;
  a_lo = a[0];
  b_lo = b[0];
  pa = 1;
  pb = 0;
  qa = 0;
  qb = 1;
  for (i = 0; i < 31; i ++) {
   uint32_t r, oa, ob, cAB, cBA, cA;
   uint64_t rz;






   rz = b_hi - a_hi;
   r = (uint32_t)((rz ^ ((a_hi ^ b_hi)
    & (a_hi ^ rz))) >> 63);
   oa = (a_lo >> i) & 1;
   ob = (b_lo >> i) & 1;
   cAB = oa & ob & r;
   cBA = oa & ob & NOT(r);
   cA = cAB | NOT(oa);




   a_lo -= b_lo & -cAB;
   a_hi -= b_hi & -(uint64_t)cAB;
   pa -= qa & -(int64_t)cAB;
   pb -= qb & -(int64_t)cAB;
   b_lo -= a_lo & -cBA;
   b_hi -= a_hi & -(uint64_t)cBA;
   qa -= pa & -(int64_t)cBA;
   qb -= pb & -(int64_t)cBA;




   a_lo += a_lo & (cA - 1);
   pa += pa & ((int64_t)cA - 1);
   pb += pb & ((int64_t)cA - 1);
   a_hi ^= (a_hi ^ (a_hi >> 1)) & -(uint64_t)cA;
   b_lo += b_lo & -cA;
   qa += qa & -(int64_t)cA;
   qb += qb & -(int64_t)cA;
   b_hi ^= (b_hi ^ (b_hi >> 1)) & ((uint64_t)cA - 1);
  }




  r = co_reduce(a, b, len, pa, pb, qa, qb);
  pa -= pa * ((r & 1) << 1);
  pb -= pb * ((r & 1) << 1);
  qa -= qa * (r & 2);
  qb -= qb * (r & 2);
  co_reduce_mod(u, v, len, pa, pb, qa, qb, m + 1, m0i);
 }







 r = (a[0] | b[0]) ^ 1;
 u[0] |= v[0];
 for (k = 1; k < len; k ++) {
  r |= a[k] | b[k];
  u[k] |= v[k];
 }
 return EQ0(r);
}
