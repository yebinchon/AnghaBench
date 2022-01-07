
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



uint64_t
_dwarf_read_lsb(uint8_t *data, uint64_t *offsetp, int bytes_to_read)
{
 uint64_t ret;
 uint8_t *src;

 src = data + *offsetp;

 ret = 0;
 switch (bytes_to_read) {
 case 8:
  ret |= ((uint64_t) src[4]) << 32 | ((uint64_t) src[5]) << 40;
  ret |= ((uint64_t) src[6]) << 48 | ((uint64_t) src[7]) << 56;

 case 4:
  ret |= ((uint64_t) src[2]) << 16 | ((uint64_t) src[3]) << 24;

 case 2:
  ret |= ((uint64_t) src[1]) << 8;

 case 1:
  ret |= src[0];
  break;
 default:
  return (0);
 }

 *offsetp += bytes_to_read;

 return (ret);
}
