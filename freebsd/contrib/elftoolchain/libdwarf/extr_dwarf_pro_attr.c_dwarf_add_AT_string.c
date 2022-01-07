
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Dwarf_P_Die ;
typedef int * Dwarf_P_Debug ;
typedef int Dwarf_P_Attribute ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef int Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 int DW_DLV_BADADDR ;
 scalar_t__ _dwarf_add_string_attr (int *,int *,int ,char*,int *) ;

Dwarf_P_Attribute
dwarf_add_AT_string(Dwarf_P_Debug dbg, Dwarf_P_Die die, Dwarf_Half attr,
    char *string, Dwarf_Error *error)
{
 Dwarf_Attribute at;

 if (dbg == ((void*)0) || die == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }



 if (_dwarf_add_string_attr(die, &at, attr, string, error) !=
     DW_DLE_NONE)
  return (DW_DLV_BADADDR);

 return (at);
}
