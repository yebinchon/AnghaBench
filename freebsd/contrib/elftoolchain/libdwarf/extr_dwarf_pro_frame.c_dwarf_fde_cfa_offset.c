
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * fde_dbg; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef TYPE_1__* Dwarf_P_Fde ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_CFA_offset ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 TYPE_1__* DW_DLV_BADADDR ;
 int _dwarf_frame_fde_add_inst (TYPE_1__*,int,int ,int ,int *) ;

Dwarf_P_Fde
dwarf_fde_cfa_offset(Dwarf_P_Fde fde, Dwarf_Unsigned reg, Dwarf_Signed offset,
    Dwarf_Error *error)
{
 int ret;
 Dwarf_Debug dbg;

 dbg = fde != ((void*)0) ? fde->fde_dbg : ((void*)0);

 if (fde == ((void*)0) || reg > 0x3f) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 ret = _dwarf_frame_fde_add_inst(fde, DW_CFA_offset | (reg & 0x3f),
     offset, 0, error);

 if (ret != DW_DLE_NONE)
  return (DW_DLV_BADADDR);

 return (fde);
}
