
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



uint64_t
_dwarf_decode_uleb128(uint8_t **dp)
{
 uint64_t ret = 0;
 uint8_t b;
 int shift = 0;

 uint8_t *src = *dp;

 do {
  b = *src++;
  ret |= ((b & 0x7f) << shift);
  shift += 7;
 } while ((b & 0x80) != 0);

 *dp = src;

 return (ret);
}
