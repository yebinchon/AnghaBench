
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t gfmul(uint8_t a, uint8_t b)
{
 uint8_t v = 0;

 while (b) {
  if (b & 1)
   v ^= a;
  a = (a << 1) ^ (a & 0x80 ? 0x1d : 0);
  b >>= 1;
 }

 return v;
}
