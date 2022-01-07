
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dbg_strtab; } ;
typedef TYPE_1__* Dwarf_Debug ;


 int assert (int ) ;

char *
_dwarf_strtab_get_table(Dwarf_Debug dbg)
{

 assert(dbg != ((void*)0));

 return (dbg->dbg_strtab);
}
