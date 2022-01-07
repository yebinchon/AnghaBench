
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lr_offset; void* lr_number2; void* lr_number; int lr_atom; } ;
struct _Dwarf_P_Expr_Entry {TYPE_1__ ee_loc; } ;
struct TYPE_5__ {int pe_length; int pe_invalid; int pe_eelist; int * pe_dbg; } ;
typedef void* Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef TYPE_2__* Dwarf_P_Expr ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_MEMORY ;
 scalar_t__ DW_DLE_NONE ;
 int STAILQ_INSERT_TAIL (int *,struct _Dwarf_P_Expr_Entry*,int ) ;
 scalar_t__ _dwarf_loc_expr_add_atom (int *,int *,int *,int ,void*,void*,int*,int *) ;
 int assert (int) ;
 struct _Dwarf_P_Expr_Entry* calloc (int,int) ;
 int ee_next ;

__attribute__((used)) static struct _Dwarf_P_Expr_Entry *
_dwarf_add_expr(Dwarf_P_Expr expr, Dwarf_Small opcode, Dwarf_Unsigned val1,
    Dwarf_Unsigned val2, Dwarf_Error *error)
{
 struct _Dwarf_P_Expr_Entry *ee;
 Dwarf_Debug dbg;
 int len;

 dbg = expr != ((void*)0) ? expr->pe_dbg : ((void*)0);

 if (_dwarf_loc_expr_add_atom(expr->pe_dbg, ((void*)0), ((void*)0), opcode, val1,
     val2, &len, error) != DW_DLE_NONE)
  return (((void*)0));
 assert(len > 0);

 if ((ee = calloc(1, sizeof(*ee))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (((void*)0));
 }

 STAILQ_INSERT_TAIL(&expr->pe_eelist, ee, ee_next);

 ee->ee_loc.lr_atom = opcode;
 ee->ee_loc.lr_number = val1;
 ee->ee_loc.lr_number2 = val2;
 ee->ee_loc.lr_offset = expr->pe_length;
 expr->pe_length += len;
 expr->pe_invalid = 1;

 return (ee);
}
