
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dbg_mode; int dbg_cu; } ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int * Dwarf_CU ;


 scalar_t__ DW_DLC_WRITE ;
 int * STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE (int *,int *,int ,int ) ;
 int _Dwarf_CU ;
 int _dwarf_abbrev_cleanup (int *) ;
 int assert (int) ;
 int cu_next ;
 int free (int *) ;

void
_dwarf_info_pro_cleanup(Dwarf_P_Debug dbg)
{
 Dwarf_CU cu;

 assert(dbg != ((void*)0) && dbg->dbg_mode == DW_DLC_WRITE);

 cu = STAILQ_FIRST(&dbg->dbg_cu);
 if (cu != ((void*)0)) {
  STAILQ_REMOVE(&dbg->dbg_cu, cu, _Dwarf_CU, cu_next);
  _dwarf_abbrev_cleanup(cu);
  free(cu);
 }
}
