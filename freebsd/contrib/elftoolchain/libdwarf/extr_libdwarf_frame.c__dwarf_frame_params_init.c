
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbg_frame_undefined_value; int dbg_frame_same_value; int dbg_frame_cfa_value; int dbg_frame_rule_initial_value; int dbg_frame_rule_table_size; } ;
typedef TYPE_1__* Dwarf_Debug ;


 int DW_FRAME_CFA_COL3 ;
 int DW_FRAME_LAST_REG_NUM ;
 int DW_FRAME_REG_INITIAL_VALUE ;
 int DW_FRAME_SAME_VAL ;
 int DW_FRAME_UNDEFINED_VAL ;

void
_dwarf_frame_params_init(Dwarf_Debug dbg)
{


 dbg->dbg_frame_rule_table_size = DW_FRAME_LAST_REG_NUM;
 dbg->dbg_frame_rule_initial_value = DW_FRAME_REG_INITIAL_VALUE;
 dbg->dbg_frame_cfa_value = DW_FRAME_CFA_COL3;
 dbg->dbg_frame_same_value = DW_FRAME_SAME_VAL;
 dbg->dbg_frame_undefined_value = DW_FRAME_UNDEFINED_VAL;
}
