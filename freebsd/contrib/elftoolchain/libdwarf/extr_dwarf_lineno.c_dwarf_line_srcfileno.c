
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ln_fileno; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_Line ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_line_srcfileno(Dwarf_Line ln, Dwarf_Unsigned *ret_fileno,
    Dwarf_Error *error)
{

 if (ln == ((void*)0) || ret_fileno == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *ret_fileno = ln->ln_fileno;

 return (DW_DLV_OK);
}
