
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
inv_shift_rows(uint32_t *q)
{
 int i;

 for (i = 0; i < 8; i ++) {
  uint32_t x;

  x = q[i];
  q[i] = (x & 0x000000FF)
   | ((x & 0x00003F00) << 2) | ((x & 0x0000C000) >> 6)
   | ((x & 0x000F0000) << 4) | ((x & 0x00F00000) >> 4)
   | ((x & 0x03000000) << 6) | ((x & 0xFC000000) >> 2);
 }
}
