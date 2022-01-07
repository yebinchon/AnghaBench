
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int MUL31 (int,int const) ;
 int const MUL31_lo (int const,int const) ;
 int NEQ (int,int ) ;
 int NOT (int ) ;
 int br_i31_sub (int*,int const*,int) ;
 int br_i31_zero (int*,int const) ;

void
br_i31_montymul(uint32_t *d, const uint32_t *x, const uint32_t *y,
 const uint32_t *m, uint32_t m0i)
{
 size_t len, len4, u, v;
 uint32_t dh;

 len = (m[0] + 31) >> 5;
 len4 = len & ~(size_t)3;
 br_i31_zero(d, m[0]);
 dh = 0;
 for (u = 0; u < len; u ++) {
  uint32_t f, xu;



  uint32_t r;


  xu = x[u + 1];
  f = MUL31_lo((d[1] + MUL31_lo(x[u + 1], y[1])), m0i);

  r = 0;
  for (v = 0; v < len4; v += 4) {
   uint64_t z;

   z = (uint64_t)d[v + 1] + MUL31(xu, y[v + 1])
    + MUL31(f, m[v + 1]) + r;
   r = z >> 31;
   d[v + 0] = (uint32_t)z & 0x7FFFFFFF;
   z = (uint64_t)d[v + 2] + MUL31(xu, y[v + 2])
    + MUL31(f, m[v + 2]) + r;
   r = z >> 31;
   d[v + 1] = (uint32_t)z & 0x7FFFFFFF;
   z = (uint64_t)d[v + 3] + MUL31(xu, y[v + 3])
    + MUL31(f, m[v + 3]) + r;
   r = z >> 31;
   d[v + 2] = (uint32_t)z & 0x7FFFFFFF;
   z = (uint64_t)d[v + 4] + MUL31(xu, y[v + 4])
    + MUL31(f, m[v + 4]) + r;
   r = z >> 31;
   d[v + 3] = (uint32_t)z & 0x7FFFFFFF;
  }
  for (; v < len; v ++) {
   uint64_t z;

   z = (uint64_t)d[v + 1] + MUL31(xu, y[v + 1])
    + MUL31(f, m[v + 1]) + r;
   r = z >> 31;
   d[v] = (uint32_t)z & 0x7FFFFFFF;
  }






  dh += r;
  d[len] = dh & 0x7FFFFFFF;
  dh >>= 31;
 }






 d[0] = m[0];





 br_i31_sub(d, m, NEQ(dh, 0) | NOT(br_i31_sub(d, m, 0)));
}
