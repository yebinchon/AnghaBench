
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* fde_fs; int * fde_dbg; } ;
struct TYPE_5__ {scalar_t__ fs_fdelen; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_FrameSec ;
typedef TYPE_2__* Dwarf_Fde ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_fde_n(Dwarf_Fde *fdelist, Dwarf_Unsigned fde_index,
    Dwarf_Fde *ret_fde, Dwarf_Error *error)
{
 Dwarf_FrameSec fs;
 Dwarf_Debug dbg;

 dbg = fdelist != ((void*)0) ? (*fdelist)->fde_dbg : ((void*)0);

 if (fdelist == ((void*)0) || ret_fde == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 fs = fdelist[0]->fde_fs;
 assert(fs != ((void*)0));

 if (fde_index >= fs->fs_fdelen) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 }

 *ret_fde = fdelist[fde_index];

 return (DW_DLV_OK);
}
