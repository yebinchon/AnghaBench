
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dbg_frame; } ;
typedef int Dwarf_Section ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;


 int DW_DLE_NONE ;
 int * _dwarf_find_section (TYPE_1__*,char*) ;
 int _dwarf_frame_section_init (TYPE_1__*,int *,int *,int ,int *) ;

int
_dwarf_frame_section_load(Dwarf_Debug dbg, Dwarf_Error *error)
{
 Dwarf_Section *ds;

 if ((ds = _dwarf_find_section(dbg, ".debug_frame")) != ((void*)0)) {
  return (_dwarf_frame_section_init(dbg, &dbg->dbg_frame,
      ds, 0, error));
 }

 return (DW_DLE_NONE);
}
