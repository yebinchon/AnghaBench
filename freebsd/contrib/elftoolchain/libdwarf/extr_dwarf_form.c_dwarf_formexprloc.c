
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ at_form; TYPE_1__* u; TYPE_2__* at_die; } ;
struct TYPE_6__ {int * die_dbg; } ;
struct TYPE_5__ {scalar_t__ u8p; int u64; } ;
typedef int Dwarf_Unsigned ;
typedef void* Dwarf_Ptr ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef TYPE_3__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_ATTR_FORM_BAD ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 scalar_t__ DW_FORM_exprloc ;

int
dwarf_formexprloc(Dwarf_Attribute at, Dwarf_Unsigned *return_exprlen,
    Dwarf_Ptr *return_expr, Dwarf_Error *error)
{

 Dwarf_Debug dbg;

 dbg = at != ((void*)0) ? at->at_die->die_dbg : ((void*)0);

 if (at == ((void*)0) || return_exprlen == ((void*)0) || return_expr == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (at->at_form != DW_FORM_exprloc) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ATTR_FORM_BAD);
  return (DW_DLV_ERROR);
 }

 *return_exprlen = at->u[0].u64;
 *return_expr = (void *) at->u[1].u8p;

 return (DW_DLV_OK);
}
