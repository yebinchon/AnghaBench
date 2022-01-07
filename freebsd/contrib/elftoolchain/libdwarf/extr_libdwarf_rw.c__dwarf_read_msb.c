
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



uint64_t
_dwarf_read_msb(uint8_t *data, uint64_t *offsetp, int bytes_to_read)
{
 uint64_t ret;
 uint8_t *src;

 src = data + *offsetp;

 switch (bytes_to_read) {
 case 1:
  ret = src[0];
  break;
 case 2:
  ret = src[1] | ((uint64_t) src[0]) << 8;
  break;
 case 4:
  ret = src[3] | ((uint64_t) src[2]) << 8;
  ret |= ((uint64_t) src[1]) << 16 | ((uint64_t) src[0]) << 24;
  break;
 case 8:
  ret = src[7] | ((uint64_t) src[6]) << 8;
  ret |= ((uint64_t) src[5]) << 16 | ((uint64_t) src[4]) << 24;
  ret |= ((uint64_t) src[3]) << 32 | ((uint64_t) src[2]) << 40;
  ret |= ((uint64_t) src[1]) << 48 | ((uint64_t) src[0]) << 56;
  break;
 default:
  return (0);
 }

 *offsetp += bytes_to_read;

 return (ret);
}
