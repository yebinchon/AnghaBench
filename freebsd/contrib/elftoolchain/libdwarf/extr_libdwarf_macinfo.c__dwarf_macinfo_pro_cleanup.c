
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* dmd_macro; } ;
struct TYPE_5__ {scalar_t__ dbg_mode; scalar_t__ dbgp_mdcnt; TYPE_2__* dbgp_mdlist; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef TYPE_2__ Dwarf_Macro_Details ;


 scalar_t__ DW_DLC_WRITE ;
 int assert (int) ;
 int free (TYPE_2__*) ;

void
_dwarf_macinfo_pro_cleanup(Dwarf_P_Debug dbg)
{
 Dwarf_Macro_Details *md;
 int i;

 assert(dbg != ((void*)0) && dbg->dbg_mode == DW_DLC_WRITE);
 if (dbg->dbgp_mdlist == ((void*)0))
  return;

 assert(dbg->dbgp_mdcnt > 0);
 for (i = 0; (Dwarf_Unsigned) i < dbg->dbgp_mdcnt; i++) {
  md = &dbg->dbgp_mdlist[i];
  if (md->dmd_macro)
   free(md->dmd_macro);
 }
 free(dbg->dbgp_mdlist);
 dbg->dbgp_mdlist = ((void*)0);
 dbg->dbgp_mdcnt = 0;
}
