
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;



int
_dwarf_write_sleb128(uint8_t *data, uint8_t *end, int64_t val)
{
 uint8_t *p;

 p = data;

 for (;;) {
  if (p >= end)
   return (-1);
  *p = val & 0x7f;
  val >>= 7;
  if ((val == 0 && (*p & 0x40) == 0) ||
      (val == -1 && (*p & 0x40) != 0)) {
   p++;
   break;
  }
  *p++ |= 0x80;
 }

 return (p - data);
}
