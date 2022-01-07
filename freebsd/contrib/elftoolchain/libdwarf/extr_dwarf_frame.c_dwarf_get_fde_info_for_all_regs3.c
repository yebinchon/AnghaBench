
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ fde_initloc; scalar_t__ fde_adrange; int * fde_dbg; } ;
struct TYPE_9__ {int * rt3_rules; } ;
typedef TYPE_1__ Dwarf_Regtable3 ;
typedef TYPE_2__* Dwarf_Fde ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef scalar_t__ Dwarf_Addr ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 int DW_DLE_PC_NOT_IN_FDE_RANGE ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 int _dwarf_frame_get_internal_table (TYPE_2__*,scalar_t__,TYPE_1__**,scalar_t__*,int *) ;
 int _dwarf_frame_regtable_copy (int *,TYPE_1__**,TYPE_1__*,int *) ;
 int assert (int ) ;

int
dwarf_get_fde_info_for_all_regs3(Dwarf_Fde fde, Dwarf_Addr pc_requested,
    Dwarf_Regtable3 *reg_table, Dwarf_Addr *row_pc, Dwarf_Error *error)
{
 Dwarf_Regtable3 *rt;
 Dwarf_Debug dbg;
 Dwarf_Addr pc;
 int ret;

 dbg = fde != ((void*)0) ? fde->fde_dbg : ((void*)0);

 if (fde == ((void*)0) || reg_table == ((void*)0) || reg_table->rt3_rules == ((void*)0) ||
     row_pc == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 assert(dbg != ((void*)0));

 if (pc_requested < fde->fde_initloc ||
     pc_requested >= fde->fde_initloc + fde->fde_adrange) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_PC_NOT_IN_FDE_RANGE);
  return (DW_DLV_ERROR);
 }

 ret = _dwarf_frame_get_internal_table(fde, pc_requested, &rt, &pc,
     error);
 if (ret != DW_DLE_NONE)
  return (DW_DLV_ERROR);

 ret = _dwarf_frame_regtable_copy(dbg, &reg_table, rt, error);
 if (ret != DW_DLE_NONE)
  return (DW_DLV_ERROR);

 *row_pc = pc;

 return (DW_DLV_OK);
}
