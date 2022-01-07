
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct _Dwarf_P_Expr {int dummy; } ;
struct TYPE_10__ {int dbgp_pelist; } ;
struct TYPE_9__ {TYPE_2__* pe_dbg; int pe_eelist; } ;
typedef TYPE_1__* Dwarf_P_Expr ;
typedef TYPE_2__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 TYPE_1__* DW_DLV_BADADDR ;
 int STAILQ_INIT (int *) ;
 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 TYPE_1__* calloc (int,int) ;
 int pe_next ;

Dwarf_P_Expr
dwarf_new_expr(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
 Dwarf_P_Expr pe;

 if (dbg == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_BADADDR);
 }

 if ((pe = calloc(1, sizeof(struct _Dwarf_P_Expr))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLV_BADADDR);
 }
 STAILQ_INIT(&pe->pe_eelist);

 STAILQ_INSERT_TAIL(&dbg->dbgp_pelist, pe, pe_next);
 pe->pe_dbg = dbg;

 return (pe);
}
