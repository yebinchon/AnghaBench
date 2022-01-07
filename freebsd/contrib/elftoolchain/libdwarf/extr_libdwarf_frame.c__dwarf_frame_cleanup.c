
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dbg_mode; int * dbg_eh_frame; int * dbg_frame; TYPE_1__* dbg_internal_reg_table; } ;
struct TYPE_5__ {struct TYPE_5__* rt3_rules; } ;
typedef TYPE_1__ Dwarf_Regtable3 ;
typedef TYPE_2__* Dwarf_Debug ;


 scalar_t__ DW_DLC_READ ;
 int _dwarf_frame_section_cleanup (int *) ;
 int assert (int) ;
 int free (TYPE_1__*) ;

void
_dwarf_frame_cleanup(Dwarf_Debug dbg)
{
 Dwarf_Regtable3 *rt;

 assert(dbg != ((void*)0) && dbg->dbg_mode == DW_DLC_READ);

 if (dbg->dbg_internal_reg_table) {
  rt = dbg->dbg_internal_reg_table;
  free(rt->rt3_rules);
  free(rt);
  dbg->dbg_internal_reg_table = ((void*)0);
 }

 if (dbg->dbg_frame) {
  _dwarf_frame_section_cleanup(dbg->dbg_frame);
  dbg->dbg_frame = ((void*)0);
 }

 if (dbg->dbg_eh_frame) {
  _dwarf_frame_section_cleanup(dbg->dbg_eh_frame);
  dbg->dbg_eh_frame = ((void*)0);
 }
}
