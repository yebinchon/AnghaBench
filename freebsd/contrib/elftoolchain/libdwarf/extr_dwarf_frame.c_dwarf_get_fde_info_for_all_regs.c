
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_19__ {size_t dbg_frame_cfa_value; int dbg_frame_rule_table_size; } ;
struct TYPE_18__ {scalar_t__ fde_initloc; scalar_t__ fde_adrange; TYPE_6__* fde_dbg; } ;
struct TYPE_17__ {TYPE_1__* rules; } ;
struct TYPE_16__ {TYPE_2__* rt3_rules; } ;
struct TYPE_15__ {int dw_offset_or_block_len; int dw_regnum; int dw_offset_relevant; } ;
struct TYPE_14__ {int dw_offset; int dw_regnum; int dw_offset_relevant; } ;
struct TYPE_13__ {int dw_offset_or_block_len; int dw_regnum; int dw_offset_relevant; } ;
typedef TYPE_3__ Dwarf_Regtable3 ;
typedef TYPE_4__ Dwarf_Regtable ;
typedef size_t Dwarf_Half ;
typedef TYPE_5__* Dwarf_Fde ;
typedef int Dwarf_Error ;
typedef TYPE_6__* Dwarf_Debug ;
typedef scalar_t__ Dwarf_Addr ;


 TYPE_12__ CFA ;
 int DWARF_SET_ERROR (TYPE_6__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 int DW_DLE_PC_NOT_IN_FDE_RANGE ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 size_t DW_REG_TABLE_SIZE ;
 int _dwarf_frame_get_internal_table (TYPE_5__*,scalar_t__,TYPE_3__**,scalar_t__*,int *) ;
 int assert (int ) ;

int
dwarf_get_fde_info_for_all_regs(Dwarf_Fde fde, Dwarf_Addr pc_requested,
    Dwarf_Regtable *reg_table, Dwarf_Addr *row_pc, Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 Dwarf_Regtable3 *rt;
 Dwarf_Addr pc;
 Dwarf_Half cfa;
 int i, ret;

 dbg = fde != ((void*)0) ? fde->fde_dbg : ((void*)0);

 if (fde == ((void*)0) || reg_table == ((void*)0) || row_pc == ((void*)0)) {
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





 cfa = dbg->dbg_frame_cfa_value;
 if (cfa < DW_REG_TABLE_SIZE) {
  reg_table->rules[cfa].dw_offset_relevant =
      CFA.dw_offset_relevant;
  reg_table->rules[cfa].dw_regnum = CFA.dw_regnum;
  reg_table->rules[cfa].dw_offset = CFA.dw_offset_or_block_len;
 }




 for (i = 0; i < DW_REG_TABLE_SIZE && i < dbg->dbg_frame_rule_table_size;
      i++) {


  if (i == cfa)
   continue;

  reg_table->rules[i].dw_offset_relevant =
      rt->rt3_rules[i].dw_offset_relevant;
  reg_table->rules[i].dw_regnum = rt->rt3_rules[i].dw_regnum;
  reg_table->rules[i].dw_offset =
      rt->rt3_rules[i].dw_offset_or_block_len;
 }

 *row_pc = pc;

 return (DW_DLV_OK);
}
