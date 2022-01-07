
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t dbg_seccnt; TYPE_1__* dbg_section; } ;
struct TYPE_5__ {int * ds_name; } ;
typedef TYPE_1__ Dwarf_Section ;
typedef size_t Dwarf_Half ;
typedef TYPE_2__* Dwarf_Debug ;


 int assert (int) ;
 int strcmp (int *,char const*) ;

Dwarf_Section *
_dwarf_find_section(Dwarf_Debug dbg, const char *name)
{
 Dwarf_Section *ds;
 Dwarf_Half i;

 assert(dbg != ((void*)0) && name != ((void*)0));

 for (i = 0; i < dbg->dbg_seccnt; i++) {
  ds = &dbg->dbg_section[i];
  if (ds->ds_name != ((void*)0) && !strcmp(ds->ds_name, name))
   return (ds);
 }

 return (((void*)0));
}
