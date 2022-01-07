
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
cond_negate(uint32_t *a, size_t len, uint32_t ctl)
{
 size_t k;
 uint32_t cc, xm;

 cc = ctl;
 xm = -ctl >> 1;
 for (k = 0; k < len; k ++) {
  uint32_t aw;

  aw = a[k];
  aw = (aw ^ xm) + cc;
  a[k] = aw & 0x7FFFFFFF;
  cc = aw >> 31;
 }
}
