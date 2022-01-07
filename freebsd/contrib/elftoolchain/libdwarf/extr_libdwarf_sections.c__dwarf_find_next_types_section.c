
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ds_name; } ;
typedef TYPE_1__ Dwarf_Section ;
typedef int * Dwarf_Debug ;


 TYPE_1__* _dwarf_find_section (int *,char*) ;
 int assert (int ) ;
 int strcmp (int *,char*) ;

Dwarf_Section *
_dwarf_find_next_types_section(Dwarf_Debug dbg, Dwarf_Section *ds)
{

 assert(dbg != ((void*)0));

 if (ds == ((void*)0))
  return (_dwarf_find_section(dbg, ".debug_types"));

 assert(ds->ds_name != ((void*)0));

 do {
  ds++;
  if (ds->ds_name != ((void*)0) &&
      !strcmp(ds->ds_name, ".debug_types"))
   return (ds);
 } while (ds->ds_name != ((void*)0));

 return (((void*)0));
}
