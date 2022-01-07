
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _Dwarf_P_Expr_Entry {int ee_sym; } ;
struct TYPE_4__ {int pe_length; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Expr ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_NOCOUNT ;
 int DW_OP_addr ;
 struct _Dwarf_P_Expr_Entry* _dwarf_add_expr (TYPE_1__*,int ,int ,int ,int *) ;

Dwarf_Unsigned
dwarf_add_expr_addr_b(Dwarf_P_Expr expr, Dwarf_Unsigned address,
    Dwarf_Unsigned sym_index, Dwarf_Error *error)
{
 struct _Dwarf_P_Expr_Entry *ee;

 if (expr == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_NOCOUNT);
 }

 if ((ee = _dwarf_add_expr(expr, DW_OP_addr, address, 0, error)) == ((void*)0))
  return (DW_DLV_NOCOUNT);

 ee->ee_sym = sym_index;

 return (expr->pe_length);
}
