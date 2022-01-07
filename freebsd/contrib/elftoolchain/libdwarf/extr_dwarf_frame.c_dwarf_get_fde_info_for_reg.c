
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int dw_offset_or_block_len; int dw_regnum; int dw_offset_relevant; } ;
struct TYPE_10__ {int dw_offset_or_block_len; int dw_regnum; int dw_offset_relevant; } ;
struct TYPE_9__ {scalar_t__ dbg_frame_cfa_value; scalar_t__ dbg_frame_rule_table_size; } ;
struct TYPE_8__ {scalar_t__ fde_initloc; scalar_t__ fde_adrange; TYPE_2__* fde_dbg; } ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Regtable3 ;
typedef scalar_t__ Dwarf_Half ;
typedef TYPE_1__* Dwarf_Fde ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Debug ;
typedef scalar_t__ Dwarf_Addr ;


 TYPE_7__ CFA ;
 int DWARF_SET_ERROR (TYPE_2__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_FRAME_TABLE_COL_BAD ;
 int DW_DLE_NONE ;
 int DW_DLE_PC_NOT_IN_FDE_RANGE ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_REG_TABLE_SIZE ;
 TYPE_5__ RL ;
 int _dwarf_frame_get_internal_table (TYPE_1__*,scalar_t__,int **,scalar_t__*,int *) ;

int
dwarf_get_fde_info_for_reg(Dwarf_Fde fde, Dwarf_Half table_column,
    Dwarf_Addr pc_requested, Dwarf_Signed *offset_relevant,
    Dwarf_Signed *register_num, Dwarf_Signed *offset, Dwarf_Addr *row_pc,
    Dwarf_Error *error)
{
 Dwarf_Regtable3 *rt;
 Dwarf_Debug dbg;
 Dwarf_Addr pc;
 int ret;

 dbg = fde != ((void*)0) ? fde->fde_dbg : ((void*)0);

 if (fde == ((void*)0) || offset_relevant == ((void*)0) || register_num == ((void*)0) ||
     offset == ((void*)0) || row_pc == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (pc_requested < fde->fde_initloc ||
     pc_requested >= fde->fde_initloc + fde->fde_adrange) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_PC_NOT_IN_FDE_RANGE);
  return (DW_DLV_ERROR);
 }

 ret = _dwarf_frame_get_internal_table(fde, pc_requested, &rt, &pc,
     error);
 if (ret != DW_DLE_NONE)
  return (DW_DLV_ERROR);

 if (table_column == dbg->dbg_frame_cfa_value) {

  *offset_relevant = CFA.dw_offset_relevant;
  *register_num = CFA.dw_regnum;
  *offset = CFA.dw_offset_or_block_len;
 } else {

  if (table_column >= dbg->dbg_frame_rule_table_size ||
      table_column >= DW_REG_TABLE_SIZE) {
   DWARF_SET_ERROR(dbg, error, DW_DLE_FRAME_TABLE_COL_BAD);
   return (DW_DLV_ERROR);
  }

  *offset_relevant = RL.dw_offset_relevant;
  *register_num = RL.dw_regnum;
  *offset = RL.dw_offset_or_block_len;
 }

 *row_pc = pc;

 return (DW_DLV_OK);
}
