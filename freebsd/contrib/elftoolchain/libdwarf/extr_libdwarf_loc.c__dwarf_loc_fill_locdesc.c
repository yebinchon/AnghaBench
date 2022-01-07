
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int ld_cents; int * ld_s; } ;
typedef TYPE_1__ Dwarf_Locdesc ;
typedef int Dwarf_Loc ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_LOC_EXPR_BAD ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int _dwarf_loc_fill_loc (int ,TYPE_1__*,int ,int ,int ,int *,scalar_t__) ;
 int assert (int) ;
 int * calloc (int,int) ;

int
_dwarf_loc_fill_locdesc(Dwarf_Debug dbg, Dwarf_Locdesc *llbuf, uint8_t *in,
    uint64_t in_len, uint8_t pointer_size, uint8_t offset_size,
    uint8_t version, Dwarf_Error *error)
{
 int num;

 assert(llbuf != ((void*)0));
 assert(in != ((void*)0));
 assert(in_len > 0);


 if ((num = _dwarf_loc_fill_loc(dbg, ((void*)0), pointer_size, offset_size,
     version, in, in_len)) < 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_LOC_EXPR_BAD);
  return (DW_DLE_LOC_EXPR_BAD);
 }

 llbuf->ld_cents = num;
 if (num <= 0)
  return (DW_DLE_NONE);

 if ((llbuf->ld_s = calloc(num, sizeof(Dwarf_Loc))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 (void) _dwarf_loc_fill_loc(dbg, llbuf, pointer_size, offset_size,
     version, in, in_len);

 return (DW_DLE_NONE);
}
