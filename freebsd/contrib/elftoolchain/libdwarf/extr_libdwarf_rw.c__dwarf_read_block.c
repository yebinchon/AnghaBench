
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



uint8_t *
_dwarf_read_block(void *data, uint64_t *offsetp, uint64_t length)
{
 uint8_t *ret, *src;

 ret = src = (uint8_t *) data + *offsetp;

 (*offsetp) += length;

 return (ret);
}
