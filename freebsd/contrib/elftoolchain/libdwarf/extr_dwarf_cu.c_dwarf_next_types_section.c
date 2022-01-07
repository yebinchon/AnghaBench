
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * dbg_types_sec; int * dbg_tu_current; scalar_t__ dbg_types_off; scalar_t__ dbg_types_loaded; } ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int * _dwarf_find_next_types_section (TYPE_1__*,int *) ;
 int _dwarf_type_unit_cleanup (TYPE_1__*) ;

int
dwarf_next_types_section(Dwarf_Debug dbg, Dwarf_Error *error)
{


 _dwarf_type_unit_cleanup(dbg);
 dbg->dbg_types_loaded = 0;
 dbg->dbg_types_off = 0;


 dbg->dbg_tu_current = ((void*)0);


 dbg->dbg_types_sec = _dwarf_find_next_types_section(dbg,
     dbg->dbg_types_sec);

 if (dbg->dbg_types_sec == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
