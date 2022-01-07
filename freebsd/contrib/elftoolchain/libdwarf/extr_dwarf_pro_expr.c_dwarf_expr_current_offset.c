
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pe_length; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Expr ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_NOCOUNT ;

Dwarf_Unsigned
dwarf_expr_current_offset(Dwarf_P_Expr expr, Dwarf_Error *error)
{

 if (expr == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_NOCOUNT);
 }

 return (expr->pe_length);
}
