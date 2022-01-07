
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ln_column; } ;
typedef int Dwarf_Signed ;
typedef TYPE_1__* Dwarf_Line ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_lineoff(Dwarf_Line ln, Dwarf_Signed *ret_lineoff, Dwarf_Error *error)
{

 if (ln == ((void*)0) || ret_lineoff == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (ln->ln_column == 0)
  *ret_lineoff = -1;
 else
  *ret_lineoff = (Dwarf_Signed) ln->ln_column;

 return (DW_DLV_OK);
}
