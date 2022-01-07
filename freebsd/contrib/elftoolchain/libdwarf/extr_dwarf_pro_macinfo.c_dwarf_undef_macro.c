
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Unsigned ;
typedef int * Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_MACINFO_undef ;
 int _dwarf_add_macro (int *,int ,int ,int,char*,int *,int *) ;

int
dwarf_undef_macro(Dwarf_P_Debug dbg, Dwarf_Unsigned lineno, char *name,
    Dwarf_Error *error)
{

 if (dbg == ((void*)0) || name == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 return (_dwarf_add_macro(dbg, DW_MACINFO_undef, lineno, -1, name,
     ((void*)0), error));
}
