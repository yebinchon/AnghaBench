
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int MUL15 (int,int) ;
 int MUL31 (int,int) ;
 int square9 (int*,int const*) ;

__attribute__((used)) static void
f255_square(uint32_t *d, const uint32_t *a)
{
 uint32_t t[18], cc;
 int i;






 square9(t, a);





 cc = MUL15(t[8] >> 15, 19);
 t[8] &= 0x7FFF;
 for (i = 0; i < 9; i ++) {
  uint64_t w;

  w = (uint64_t)t[i] + (uint64_t)cc + MUL31(t[i + 9], 622592);
  t[i] = (uint32_t)w & 0x3FFFFFFF;
  cc = (uint32_t)(w >> 30);
 }
 cc = MUL15(t[8] >> 15, 19);
 t[8] &= 0x7FFF;
 for (i = 0; i < 9; i ++) {
  uint32_t z;

  z = t[i] + cc;
  d[i] = z & 0x3FFFFFFF;
  cc = z >> 30;
 }
}
