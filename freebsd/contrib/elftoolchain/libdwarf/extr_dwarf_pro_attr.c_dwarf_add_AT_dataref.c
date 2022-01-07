
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Unsigned ;
typedef int * Dwarf_P_Die ;
typedef int * Dwarf_P_Debug ;
typedef int Dwarf_P_Attribute ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 int DW_DLV_BADADDR ;
 int _dwarf_add_AT_dataref (int *,int *,int ,int ,int ,int *,int *,int *) ;

Dwarf_P_Attribute
dwarf_add_AT_dataref(Dwarf_P_Debug dbg, Dwarf_P_Die die, Dwarf_Half attr,
    Dwarf_Unsigned pc_value, Dwarf_Unsigned sym_index, Dwarf_Error *error)
{
 Dwarf_Attribute at;
 int ret;

 if (dbg == ((void*)0) || die == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 ret = _dwarf_add_AT_dataref(dbg, die, attr, pc_value, sym_index,
     ((void*)0), &at, error);
 if (ret != DW_DLE_NONE)
  return (DW_DLV_BADADDR);

 return (at);

}
