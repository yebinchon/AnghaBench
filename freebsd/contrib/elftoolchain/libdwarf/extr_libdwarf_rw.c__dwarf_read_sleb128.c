
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;



int64_t
_dwarf_read_sleb128(uint8_t *data, uint64_t *offsetp)
{
 int64_t ret = 0;
 uint8_t b;
 int shift = 0;
 uint8_t *src;

 src = data + *offsetp;

 do {
  b = *src++;
  ret |= ((b & 0x7f) << shift);
  (*offsetp)++;
  shift += 7;
 } while ((b & 0x80) != 0);

 if (shift < 64 && (b & 0x40) != 0)
  ret |= (-1 << shift);

 return (ret);
}
