
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int _dwarf_write_block (int *,int*,int *,int) ;
 int assert (int) ;
 int * realloc (int *,size_t) ;

int
_dwarf_write_block_alloc(uint8_t **block, uint64_t *size, uint64_t *offsetp,
    uint8_t *blk, uint64_t length, Dwarf_Error *error)
{

 assert(*size > 0);

 while (*offsetp + length > *size) {
  *size *= 2;
  *block = realloc(*block, (size_t) *size);
  if (*block == ((void*)0)) {
   DWARF_SET_ERROR(((void*)0), error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }
 }

 _dwarf_write_block(*block, offsetp, blk, length);

 return (DW_DLE_NONE);
}
