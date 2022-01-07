
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ab_entry; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Abbrev ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_get_abbrev_code(Dwarf_Abbrev abbrev, Dwarf_Unsigned *return_code,
    Dwarf_Error *error)
{

 if (abbrev == ((void*)0) || return_code == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *return_code = abbrev->ab_entry;

 return (DW_DLV_OK);
}
