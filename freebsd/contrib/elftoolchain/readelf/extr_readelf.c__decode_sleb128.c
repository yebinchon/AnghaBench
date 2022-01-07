
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;



__attribute__((used)) static int64_t
_decode_sleb128(uint8_t **dp, uint8_t *dpe)
{
 int64_t ret = 0;
 uint8_t b = 0;
 int shift = 0;

 uint8_t *src = *dp;

 do {
  if (src >= dpe)
   break;
  b = *src++;
  ret |= ((b & 0x7f) << shift);
  shift += 7;
 } while ((b & 0x80) != 0);

 if (shift < 32 && (b & 0x40) != 0)
  ret |= (-1 << shift);

 *dp = src;

 return (ret);
}
