
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dbg_mode; int dbg_strtab; } ;
typedef TYPE_1__* Dwarf_Debug ;


 scalar_t__ DW_DLC_RDWR ;
 scalar_t__ DW_DLC_WRITE ;
 int assert (int ) ;
 int free (int ) ;

void
_dwarf_strtab_cleanup(Dwarf_Debug dbg)
{

 assert(dbg != ((void*)0));

 if (dbg->dbg_mode == DW_DLC_RDWR || dbg->dbg_mode == DW_DLC_WRITE)
  free(dbg->dbg_strtab);
}
