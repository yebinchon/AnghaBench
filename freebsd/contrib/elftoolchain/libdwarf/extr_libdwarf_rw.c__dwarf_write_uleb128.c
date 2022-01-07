
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



int
_dwarf_write_uleb128(uint8_t *data, uint8_t *end, uint64_t val)
{
 uint8_t *p;

 p = data;

 do {
  if (p >= end)
   return (-1);
  *p = val & 0x7f;
  val >>= 7;
  if (val > 0)
   *p |= 0x80;
  p++;
 } while (val > 0);

 return (p - data);
}
