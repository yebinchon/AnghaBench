
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;



__attribute__((used)) static char *rle_compress16(uint16_t * src, char *dst, int rem)
{

 int rl;
 uint16_t pix0;
 char *end_if_raw = dst + 6 + 2 * rem;

 dst += 6;

 while (rem && dst < end_if_raw) {
  char *start = (char *)src;

  pix0 = *src++;
  rl = 1;
  rem--;
  while (rem && *src == pix0)
   rem--, rl++, src++;
  *dst++ = rl;
  *dst++ = start[1];
  *dst++ = start[0];
 }

 return dst;
}
