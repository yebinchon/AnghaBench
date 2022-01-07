
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
t0_parse7E_unsigned(const unsigned char **p)
{
 uint32_t x;

 x = 0;
 for (;;) {
  unsigned y;

  y = *(*p) ++;
  x = (x << 7) | (uint32_t)(y & 0x7F);
  if (y < 0x80) {
   return x;
  }
 }
}
