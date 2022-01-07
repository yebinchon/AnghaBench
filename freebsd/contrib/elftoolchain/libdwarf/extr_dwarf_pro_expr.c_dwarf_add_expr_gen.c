
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pe_length; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef TYPE_1__* Dwarf_P_Expr ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_NOCOUNT ;
 int * _dwarf_add_expr (TYPE_1__*,int ,int ,int ,int *) ;

Dwarf_Unsigned
dwarf_add_expr_gen(Dwarf_P_Expr expr, Dwarf_Small opcode, Dwarf_Unsigned val1,
    Dwarf_Unsigned val2, Dwarf_Error *error)
{

 if (expr == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_NOCOUNT);
 }

 if (_dwarf_add_expr(expr, opcode, val1, val2, error) == ((void*)0))
  return (DW_DLV_NOCOUNT);

 return (expr->pe_length);
}
