
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
cswap(uint32_t *a, uint32_t *b, uint32_t ctl)
{
 int i;

 ctl = -ctl;
 for (i = 0; i < 9; i ++) {
  uint32_t aw, bw, tw;

  aw = a[i];
  bw = b[i];
  tw = ctl & (aw ^ bw);
  a[i] = aw ^ tw;
  b[i] = bw ^ tw;
 }
}
