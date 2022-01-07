
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct _Dwarf_Arange {int dummy; } ;
struct TYPE_10__ {void* ar_eoff; scalar_t__ ar_esymndx; scalar_t__ ar_symndx; scalar_t__ ar_range; void* ar_address; TYPE_2__* ar_as; } ;
struct TYPE_9__ {int as_arlist; } ;
struct TYPE_8__ {int dbgp_flags; TYPE_2__* dbgp_as; } ;
typedef scalar_t__ Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Debug ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_ArangeSet ;
typedef TYPE_3__* Dwarf_Arange ;
typedef void* Dwarf_Addr ;


 int DWARF_SET_ERROR (TYPE_1__*,int *,int ) ;
 int DW_DLC_SYMBOLIC_RELOCATIONS ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_MEMORY ;
 int STAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int ar_next ;
 TYPE_3__* calloc (int,int) ;

Dwarf_Unsigned
dwarf_add_arange_b(Dwarf_P_Debug dbg, Dwarf_Addr start, Dwarf_Unsigned length,
    Dwarf_Unsigned symbol_index, Dwarf_Unsigned end_symbol_index,
    Dwarf_Addr offset_from_end_symbol, Dwarf_Error *error)
{
 Dwarf_ArangeSet as;
 Dwarf_Arange ar;

 if (dbg == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (0);
 }
 as = dbg->dbgp_as;

 if (end_symbol_index > 0 &&
     (dbg->dbgp_flags & DW_DLC_SYMBOLIC_RELOCATIONS) == 0) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (0);
 }

 if ((ar = calloc(1, sizeof(struct _Dwarf_Arange))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (0);
 }
 ar->ar_as = as;
 ar->ar_address = start;
 ar->ar_range = length;
 ar->ar_symndx = symbol_index;
 ar->ar_esymndx = end_symbol_index;
 ar->ar_eoff = offset_from_end_symbol;
 STAILQ_INSERT_TAIL(&as->as_arlist, ar, ar_next);

 return (1);
}
