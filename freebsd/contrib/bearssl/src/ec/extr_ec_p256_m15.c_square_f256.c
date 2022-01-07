
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ARSH (int,int) ;
 int norm13 (int*,int*,int) ;
 int square20 (int*,int const*) ;

__attribute__((used)) static void
square_f256(uint32_t *d, const uint32_t *a)
{
 uint32_t t[40], cc;
 int i;




 square20(t, a);
 for (i = 39; i >= 20; i --) {
  uint32_t x;

  x = t[i];
  t[i - 2] += ARSH(x, 6);
  t[i - 3] += (x << 7) & 0x1FFF;
  t[i - 4] -= ARSH(x, 12);
  t[i - 5] -= (x << 1) & 0x1FFF;
  t[i - 12] -= ARSH(x, 4);
  t[i - 13] -= (x << 9) & 0x1FFF;
  t[i - 19] += ARSH(x, 9);
  t[i - 20] += (x << 4) & 0x1FFF;
 }
 cc = norm13(t, t, 20);







 cc = (cc << 4) | (t[19] >> 9);
 t[19] &= 0x01FF;
 t[17] += cc << 3;
 t[14] -= cc << 10;
 t[7] -= cc << 5;
 t[0] += cc;
 cc >>= 31;
 t[0] -= cc;
 t[7] += cc << 5;
 t[14] += cc << 10;
 t[17] -= cc << 3;
 t[19] += cc << 9;

 norm13(d, t, 20);
}
