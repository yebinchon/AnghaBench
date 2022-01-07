
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int MUL (int,int const) ;
 int NOT (int ) ;
 int br_i32_sub (int*,int const*,int ) ;

void
br_i32_from_monty(uint32_t *x, const uint32_t *m, uint32_t m0i)
{
 size_t len, u, v;

 len = (m[0] + 31) >> 5;
 for (u = 0; u < len; u ++) {
  uint32_t f;
  uint64_t cc;

  f = x[1] * m0i;
  cc = 0;
  for (v = 0; v < len; v ++) {
   uint64_t z;

   z = (uint64_t)x[v + 1] + MUL(f, m[v + 1]) + cc;
   cc = z >> 32;
   if (v != 0) {
    x[v] = (uint32_t)z;
   }
  }
  x[len] = (uint32_t)cc;
 }
 br_i32_sub(x, m, NOT(br_i32_sub(x, m, 0)));
}
