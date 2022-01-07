
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cie_addrsize; int * cie_dbg; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int * Dwarf_Ptr ;
typedef int Dwarf_Frame_Op ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_1__* Dwarf_Cie ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 int _dwarf_frame_get_fop (int *,int ,int *,int ,int **,int *,int *) ;

int
dwarf_expand_frame_instructions(Dwarf_Cie cie, Dwarf_Ptr instruction,
    Dwarf_Unsigned len, Dwarf_Frame_Op **ret_oplist, Dwarf_Signed *ret_opcnt,
    Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 int ret;

 dbg = cie != ((void*)0) ? cie->cie_dbg : ((void*)0);

 if (cie == ((void*)0) || instruction == ((void*)0) || len == 0 ||
     ret_oplist == ((void*)0) || ret_opcnt == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 ret = _dwarf_frame_get_fop(dbg, cie->cie_addrsize, instruction, len,
     ret_oplist, ret_opcnt, error);
 if (ret != DW_DLE_NONE)
  return (DW_DLV_ERROR);

 return (DW_DLV_OK);
}
