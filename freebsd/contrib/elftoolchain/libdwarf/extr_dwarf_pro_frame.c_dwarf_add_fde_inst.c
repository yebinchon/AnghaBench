
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef int * Dwarf_P_Fde ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 int * DW_DLV_BADADDR ;
 int _dwarf_frame_fde_add_inst (int *,int ,int ,int ,int *) ;

Dwarf_P_Fde
dwarf_add_fde_inst(Dwarf_P_Fde fde, Dwarf_Small op, Dwarf_Unsigned val1,
    Dwarf_Unsigned val2, Dwarf_Error *error)
{
 int ret;

 if (fde == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 ret = _dwarf_frame_fde_add_inst(fde, op, val1, val2, error);

 if (ret != DW_DLE_NONE)
  return (DW_DLV_BADADDR);

 return (fde);
}
