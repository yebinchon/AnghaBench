
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fde_instlen; int fde_inst; int * fde_dbg; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Ptr ;
typedef TYPE_1__* Dwarf_Fde ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_get_fde_instr_bytes(Dwarf_Fde fde, Dwarf_Ptr *ret_inst,
    Dwarf_Unsigned *ret_len, Dwarf_Error *error)
{
 Dwarf_Debug dbg;

 dbg = fde != ((void*)0) ? fde->fde_dbg : ((void*)0);

 if (fde == ((void*)0) || ret_inst == ((void*)0) || ret_len == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *ret_inst = fde->fde_inst;
 *ret_len = fde->fde_instlen;

 return (DW_DLV_OK);
}
