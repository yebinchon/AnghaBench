
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int memset (int *,int ,int) ;

void
_dwarf_write_padding(void *data, uint64_t *offsetp, uint8_t byte,
    uint64_t length)
{
 uint8_t *dst;

 dst = (uint8_t *) data + *offsetp;
 memset(dst, byte, length);
 (*offsetp) += length;
}
