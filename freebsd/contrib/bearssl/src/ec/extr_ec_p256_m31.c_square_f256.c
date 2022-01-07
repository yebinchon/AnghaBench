
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int ARSH (int,int) ;
 int ARSHW (int,int) ;
 int square9 (int*,int const*) ;

__attribute__((used)) static void
square_f256(uint32_t *d, const uint32_t *a)
{
 uint32_t t[18];
 uint64_t s[18];
 uint64_t cc, x;
 uint32_t z, c;
 int i;

 square9(t, a);
 for (i = 0; i < 18; i ++) {
  s[i] = t[i];
 }

 for (i = 17; i >= 9; i --) {
  uint64_t y;

  y = s[i];
  s[i - 1] += ARSHW(y, 2);
  s[i - 2] += (y << 28) & 0x3FFFFFFF;
  s[i - 2] -= ARSHW(y, 4);
  s[i - 3] -= (y << 26) & 0x3FFFFFFF;
  s[i - 5] -= ARSHW(y, 10);
  s[i - 6] -= (y << 20) & 0x3FFFFFFF;
  s[i - 8] += ARSHW(y, 16);
  s[i - 9] += (y << 14) & 0x3FFFFFFF;
 }
 cc = 0;
 for (i = 0; i < 9; i ++) {
  x = s[i] + cc;
  d[i] = (uint32_t)x & 0x3FFFFFFF;
  cc = ARSHW(x, 30);
 }
 cc = ARSHW(x, 16);
 d[8] &= 0xFFFF;
 z = (uint32_t)cc;
 d[3] -= z << 6;
 d[6] -= (z << 12) & 0x3FFFFFFF;
 d[7] -= ARSH(z, 18);
 d[7] += (z << 14) & 0x3FFFFFFF;
 d[8] += ARSH(z, 16);
 c = z >> 31;
 d[0] -= c;
 d[3] += c << 6;
 d[6] += c << 12;
 d[7] -= c << 14;
 d[8] += c << 16;
 for (i = 0; i < 9; i ++) {
  uint32_t w;

  w = d[i] + z;
  d[i] = w & 0x3FFFFFFF;
  z = ARSH(w, 30);
 }
}
