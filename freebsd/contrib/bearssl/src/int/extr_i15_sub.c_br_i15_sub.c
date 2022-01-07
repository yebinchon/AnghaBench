
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int MUX (int,int,int) ;

uint32_t
br_i15_sub(uint16_t *a, const uint16_t *b, uint32_t ctl)
{
 uint32_t cc;
 size_t u, m;

 cc = 0;
 m = (a[0] + 31) >> 4;
 for (u = 1; u < m; u ++) {
  uint32_t aw, bw, naw;

  aw = a[u];
  bw = b[u];
  naw = aw - bw - cc;
  cc = naw >> 31;
  a[u] = MUX(ctl, naw & 0x7FFF, aw);
 }
 return cc;
}
