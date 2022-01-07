
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct _Dwarf_Fde {int dummy; } ;
struct TYPE_5__ {int * fde_dbg; } ;
typedef TYPE_1__* Dwarf_P_Fde ;
typedef int * Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 TYPE_1__* DW_DLV_BADADDR ;
 TYPE_1__* calloc (int,int) ;

Dwarf_P_Fde
dwarf_new_fde(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
 Dwarf_P_Fde fde;

 if (dbg == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 if ((fde = calloc(1, sizeof(struct _Dwarf_Fde))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLV_BADADDR);
 }

 fde->fde_dbg = dbg;

 return (fde);
}
