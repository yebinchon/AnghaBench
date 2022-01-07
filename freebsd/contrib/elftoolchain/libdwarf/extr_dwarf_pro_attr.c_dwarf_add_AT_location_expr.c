
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int at_form; TYPE_1__* u; TYPE_2__* at_expr; int at_attrib; TYPE_3__* at_die; } ;
struct TYPE_16__ {int die_attr; } ;
struct TYPE_15__ {scalar_t__ pe_length; int pe_block; } ;
struct TYPE_14__ {scalar_t__ u64; int u8p; } ;
typedef TYPE_2__* Dwarf_P_Expr ;
typedef TYPE_3__* Dwarf_P_Die ;
typedef int * Dwarf_P_Debug ;
typedef TYPE_4__* Dwarf_P_Attribute ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_4__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 scalar_t__ DW_DLE_NONE ;
 TYPE_4__* DW_DLV_BADADDR ;
 int DW_FORM_block ;
 int DW_FORM_block1 ;
 int DW_FORM_block2 ;
 int DW_FORM_block4 ;
 int STAILQ_INSERT_TAIL (int *,TYPE_4__*,int ) ;
 scalar_t__ UCHAR_MAX ;
 scalar_t__ UINT_MAX ;
 scalar_t__ USHRT_MAX ;
 scalar_t__ _dwarf_attr_alloc (TYPE_3__*,TYPE_4__**,int *) ;
 scalar_t__ _dwarf_expr_into_block (TYPE_2__*,int *) ;
 int at_next ;

Dwarf_P_Attribute
dwarf_add_AT_location_expr(Dwarf_P_Debug dbg, Dwarf_P_Die die, Dwarf_Half attr,
    Dwarf_P_Expr loc_expr, Dwarf_Error *error)
{
 Dwarf_Attribute at;

 if (dbg == ((void*)0) || die == ((void*)0) || loc_expr == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 if (_dwarf_attr_alloc(die, &at, error) != DW_DLE_NONE)
  return (DW_DLV_BADADDR);

 at->at_die = die;
 at->at_attrib = attr;
 at->at_expr = loc_expr;

 if (_dwarf_expr_into_block(loc_expr, error) != DW_DLE_NONE)
  return (DW_DLV_BADADDR);
 at->u[0].u64 = loc_expr->pe_length;
 at->u[1].u8p = loc_expr->pe_block;
 if (loc_expr->pe_length <= UCHAR_MAX)
  at->at_form = DW_FORM_block1;
 else if (loc_expr->pe_length <= USHRT_MAX)
  at->at_form = DW_FORM_block2;
 else if (loc_expr->pe_length <= UINT_MAX)
  at->at_form = DW_FORM_block4;
 else
  at->at_form = DW_FORM_block;

 STAILQ_INSERT_TAIL(&die->die_attr, at, at_next);

 return (at);
}
