
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;



__attribute__((used)) static int32_t
t0_parse7E_signed(const unsigned char **p)
{
 int neg;
 uint32_t x;

 neg = ((**p) >> 6) & 1;
 x = (uint32_t)-neg;
 for (;;) {
  unsigned y;

  y = *(*p) ++;
  x = (x << 7) | (uint32_t)(y & 0x7F);
  if (y < 0x80) {
   if (neg) {
    return -(int32_t)~x - 1;
   } else {
    return (int32_t)x;
   }
  }
 }
}
