
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ln_endseq; } ;
typedef TYPE_1__* Dwarf_Line ;
typedef int Dwarf_Error ;
typedef int Dwarf_Bool ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_lineendsequence(Dwarf_Line ln, Dwarf_Bool *ret_bool, Dwarf_Error *error)
{

 if (ln == ((void*)0) || ret_bool == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *ret_bool = ln->ln_endseq;

 return (DW_DLV_OK);
}
