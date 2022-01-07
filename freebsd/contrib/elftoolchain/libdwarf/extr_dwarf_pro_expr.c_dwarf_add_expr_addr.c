
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_P_Expr ;
typedef int Dwarf_Error ;


 int dwarf_add_expr_addr_b (int ,int ,int ,int *) ;

Dwarf_Unsigned
dwarf_add_expr_addr(Dwarf_P_Expr expr, Dwarf_Unsigned address,
    Dwarf_Signed sym_index, Dwarf_Error *error)
{

 return (dwarf_add_expr_addr_b(expr, address, sym_index, error));
}
