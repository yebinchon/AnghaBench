
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cie_index; } ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Cie ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_get_cie_index(Dwarf_Cie cie, Dwarf_Signed *cie_index, Dwarf_Error *error)
{

 if (cie == ((void*)0) || cie_index == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *cie_index = cie->cie_index;

 return (DW_DLV_OK);
}
