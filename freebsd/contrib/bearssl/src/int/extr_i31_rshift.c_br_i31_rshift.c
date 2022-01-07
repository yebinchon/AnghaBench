
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



void
br_i31_rshift(uint32_t *x, int count)
{
 size_t u, len;
 uint32_t r;

 len = (x[0] + 31) >> 5;
 if (len == 0) {
  return;
 }
 r = x[1] >> count;
 for (u = 2; u <= len; u ++) {
  uint32_t w;

  w = x[u];
  x[u - 1] = ((w << (31 - count)) | r) & 0x7FFFFFFF;
  r = w >> count;
 }
 x[len] = r;
}
