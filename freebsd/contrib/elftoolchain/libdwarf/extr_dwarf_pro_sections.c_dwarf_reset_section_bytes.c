
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbgp_drslist; void* dbgp_drspos; int dbgp_seclist; void* dbgp_secpos; } ;
typedef TYPE_1__* Dwarf_P_Debug ;


 void* STAILQ_FIRST (int *) ;
 int assert (int ) ;

void
dwarf_reset_section_bytes(Dwarf_P_Debug dbg)
{

 assert(dbg != ((void*)0));

 dbg->dbgp_secpos = STAILQ_FIRST(&dbg->dbgp_seclist);
 dbg->dbgp_drspos = STAILQ_FIRST(&dbg->dbgp_drslist);
}
