
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BF_word ;


 void** BF_itoa64 ;

__attribute__((used)) static void BF_encode(char *dst, const BF_word *src, int size)
{
 const unsigned char *sptr = (const unsigned char *)src;
 const unsigned char *end = sptr + size;
 unsigned char *dptr = (unsigned char *)dst;
 unsigned int c1, c2;

 do {
  c1 = *sptr++;
  *dptr++ = BF_itoa64[c1 >> 2];
  c1 = (c1 & 0x03) << 4;
  if (sptr >= end) {
   *dptr++ = BF_itoa64[c1];
   break;
  }

  c2 = *sptr++;
  c1 |= c2 >> 4;
  *dptr++ = BF_itoa64[c1];
  c1 = (c2 & 0x0f) << 2;
  if (sptr >= end) {
   *dptr++ = BF_itoa64[c1];
   break;
  }

  c2 = *sptr++;
  c1 |= c2 >> 6;
  *dptr++ = BF_itoa64[c1];
  *dptr++ = BF_itoa64[c2 & 0x3f];
 } while (sptr < end);
}
