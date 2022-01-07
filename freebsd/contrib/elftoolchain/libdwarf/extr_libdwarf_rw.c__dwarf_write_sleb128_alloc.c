
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int int64_t ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int _dwarf_write_sleb128 (int *,int *,int ) ;
 int assert (int) ;
 int * realloc (int *,size_t) ;

int
_dwarf_write_sleb128_alloc(uint8_t **block, uint64_t *size, uint64_t *offsetp,
    int64_t val, Dwarf_Error *error)
{
 int len;

 assert(*size > 0);

 while ((len = _dwarf_write_sleb128(*block + *offsetp, *block + *size,
     val)) < 0) {
  *size *= 2;
  *block = realloc(*block, (size_t) *size);
  if (*block == ((void*)0)) {
   DWARF_SET_ERROR(((void*)0), error, DW_DLE_MEMORY);
   return (DW_DLE_MEMORY);
  }
 }

 *offsetp += len;

 return (DW_DLE_NONE);
}
