
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static void
finish_mod(uint16_t *a, size_t len, const uint16_t *m, uint32_t neg)
{
 size_t k;
 uint32_t cc, xm, ym;




 cc = 0;
 for (k = 0; k < len; k ++) {
  uint32_t aw, mw;

  aw = a[k];
  mw = m[k];
  cc = (aw - mw - cc) >> 31;
 }







 xm = 0x7FFF & -neg;
 ym = -(neg | (1 - cc));
 cc = neg;
 for (k = 0; k < len; k ++) {
  uint32_t aw, mw;

  aw = a[k];
  mw = (m[k] ^ xm) & ym;
  aw = aw - mw - cc;
  a[k] = aw & 0x7FFF;
  cc = aw >> 31;
 }
}
