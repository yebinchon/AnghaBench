
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dbg_tu_current; scalar_t__ dbg_types_loaded; } ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;
typedef int * Dwarf_CU ;


 int DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 void* STAILQ_NEXT (int *,int ) ;
 int _dwarf_info_load (TYPE_1__*,int ,int ,int *) ;
 int assert (int ) ;
 int cu_next ;

int
_dwarf_info_next_tu(Dwarf_Debug dbg, Dwarf_Error *error)
{
 Dwarf_CU cu;
 int ret;

 assert(dbg->dbg_tu_current != ((void*)0));
 cu = STAILQ_NEXT(dbg->dbg_tu_current, cu_next);
 if (cu != ((void*)0)) {
  dbg->dbg_tu_current = cu;
  return (DW_DLE_NONE);
 }

 if (dbg->dbg_types_loaded) {
  dbg->dbg_tu_current = ((void*)0);
  return (DW_DLE_NO_ENTRY);
 }

 ret = _dwarf_info_load(dbg, 0, 0, error);
 if (ret != DW_DLE_NONE)
  return (ret);

 dbg->dbg_tu_current = STAILQ_NEXT(dbg->dbg_tu_current, cu_next);

 return (DW_DLE_NONE);
}
