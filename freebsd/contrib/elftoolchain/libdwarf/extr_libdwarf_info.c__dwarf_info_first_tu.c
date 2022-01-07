
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dbg_tu; int * dbg_tu_current; scalar_t__ dbg_types_off; scalar_t__ dbg_types_loaded; } ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;
typedef int * Dwarf_CU ;


 int DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 void* STAILQ_FIRST (int *) ;
 int _dwarf_info_load (TYPE_1__*,int ,int ,int *) ;
 int assert (int ) ;

int
_dwarf_info_first_tu(Dwarf_Debug dbg, Dwarf_Error *error)
{
 Dwarf_CU tu;
 int ret;

 assert(dbg->dbg_tu_current == ((void*)0));
 tu = STAILQ_FIRST(&dbg->dbg_tu);
 if (tu != ((void*)0)) {
  dbg->dbg_tu_current = tu;
  return (DW_DLE_NONE);
 }

 if (dbg->dbg_types_loaded)
  return (DW_DLE_NO_ENTRY);

 dbg->dbg_types_off = 0;
 ret = _dwarf_info_load(dbg, 0, 0, error);
 if (ret != DW_DLE_NONE)
  return (ret);

 dbg->dbg_tu_current = STAILQ_FIRST(&dbg->dbg_tu);

 return (DW_DLE_NONE);
}
