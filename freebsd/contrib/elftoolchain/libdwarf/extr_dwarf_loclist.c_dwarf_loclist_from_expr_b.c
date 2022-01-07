
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef int Dwarf_Signed ;
typedef int * Dwarf_Ptr ;
typedef int Dwarf_Locdesc ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 int _dwarf_loc_fill_locexpr (int *,int **,int *,int ,int,int,int ,int *) ;

int
dwarf_loclist_from_expr_b(Dwarf_Debug dbg, Dwarf_Ptr bytes_in,
    Dwarf_Unsigned bytes_len, Dwarf_Half addr_size, Dwarf_Half offset_size,
    Dwarf_Small version, Dwarf_Locdesc **llbuf, Dwarf_Signed *listlen,
    Dwarf_Error *error)
{
 Dwarf_Locdesc *ld;
 int ret;

 if (dbg == ((void*)0) || bytes_in == ((void*)0) || bytes_len == 0 ||
     llbuf == ((void*)0) || listlen == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (addr_size != 4 && addr_size != 8) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (offset_size != 4 && offset_size != 8) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 ret = _dwarf_loc_fill_locexpr(dbg, &ld, bytes_in, bytes_len, addr_size,
     offset_size, version, error);
 if (ret != DW_DLE_NONE)
  return (DW_DLV_ERROR);

 *llbuf = ld;
 *listlen = 1;

 return (DW_DLV_OK);
}
