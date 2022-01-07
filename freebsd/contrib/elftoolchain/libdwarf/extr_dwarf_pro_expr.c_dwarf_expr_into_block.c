
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pe_block; int pe_length; scalar_t__ pe_invalid; int * pe_dbg; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Expr ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef int Dwarf_Addr ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 scalar_t__ DW_DLV_BADADDR ;
 scalar_t__ _dwarf_expr_into_block (TYPE_1__*,int *) ;

Dwarf_Addr
dwarf_expr_into_block(Dwarf_P_Expr expr, Dwarf_Unsigned *length,
    Dwarf_Error *error)
{
 Dwarf_Debug dbg;

 dbg = expr != ((void*)0) ? expr->pe_dbg : ((void*)0);

 if (expr == ((void*)0) || length == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return ((Dwarf_Addr) (uintptr_t) DW_DLV_BADADDR);
 }

 if (expr->pe_block == ((void*)0) || expr->pe_invalid)
  if (_dwarf_expr_into_block(expr, error) != DW_DLE_NONE)
   return ((Dwarf_Addr) (uintptr_t) DW_DLV_BADADDR);

 *length = expr->pe_length;

 return ((Dwarf_Addr) (uintptr_t) expr->pe_block);
}
