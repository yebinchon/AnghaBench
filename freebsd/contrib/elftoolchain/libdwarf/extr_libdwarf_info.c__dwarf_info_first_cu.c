
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dbg_cu; int * dbg_cu_current; scalar_t__ dbg_info_off; scalar_t__ dbg_info_loaded; } ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;
typedef int * Dwarf_CU ;


 int DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 void* STAILQ_FIRST (int *) ;
 int _dwarf_info_load (TYPE_1__*,int ,int,int *) ;
 int assert (int ) ;

int
_dwarf_info_first_cu(Dwarf_Debug dbg, Dwarf_Error *error)
{
 Dwarf_CU cu;
 int ret;

 assert(dbg->dbg_cu_current == ((void*)0));
 cu = STAILQ_FIRST(&dbg->dbg_cu);
 if (cu != ((void*)0)) {
  dbg->dbg_cu_current = cu;
  return (DW_DLE_NONE);
 }

 if (dbg->dbg_info_loaded)
  return (DW_DLE_NO_ENTRY);

 dbg->dbg_info_off = 0;
 ret = _dwarf_info_load(dbg, 0, 1, error);
 if (ret != DW_DLE_NONE)
  return (ret);

 dbg->dbg_cu_current = STAILQ_FIRST(&dbg->dbg_cu);

 return (DW_DLE_NONE);
}
