
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_24__ {scalar_t__ at_form; TYPE_3__* u; } ;
struct TYPE_23__ {int cu_next_offset; int cu_dwarf_size; scalar_t__ cu_offset; int cu_1st_offset; } ;
struct TYPE_22__ {TYPE_6__* dbg_tu_current; TYPE_6__* dbg_cu_current; int * dbg_types_sec; int * dbg_info_sec; } ;
struct TYPE_21__ {int die_dbg; scalar_t__ die_next_off; TYPE_2__* die_ab; TYPE_1__* die_cu; } ;
struct TYPE_20__ {scalar_t__ u64; } ;
struct TYPE_19__ {scalar_t__ ab_children; } ;
struct TYPE_18__ {scalar_t__ cu_is_info; } ;
typedef int Dwarf_Section ;
typedef int Dwarf_Error ;
typedef TYPE_4__* Dwarf_Die ;
typedef TYPE_5__* Dwarf_Debug ;
typedef TYPE_6__* Dwarf_CU ;
typedef scalar_t__ Dwarf_Bool ;
typedef TYPE_7__* Dwarf_Attribute ;


 int DWARF_SET_ERROR (TYPE_5__*,int *,int) ;
 int DW_AT_sibling ;
 scalar_t__ DW_CHILDREN_no ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_DIE_NO_CU_CONTEXT ;
 int DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 scalar_t__ DW_FORM_ref_addr ;
 TYPE_7__* _dwarf_attr_find (TYPE_4__*,int ) ;
 int _dwarf_die_parse (int ,int *,TYPE_6__*,int ,scalar_t__,int ,TYPE_4__**,int,int *) ;
 int dwarf_offdie_b (TYPE_5__*,int ,scalar_t__,TYPE_4__**,int *) ;

int
dwarf_siblingof_b(Dwarf_Debug dbg, Dwarf_Die die, Dwarf_Die *ret_die,
    Dwarf_Bool is_info, Dwarf_Error *error)
{
 Dwarf_CU cu;
 Dwarf_Attribute at;
 Dwarf_Section *ds;
 uint64_t offset;
 int ret, search_sibling;

 if (dbg == ((void*)0) || ret_die == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 ds = is_info ? dbg->dbg_info_sec : dbg->dbg_types_sec;
 cu = is_info ? dbg->dbg_cu_current : dbg->dbg_tu_current;

 if (cu == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_DIE_NO_CU_CONTEXT);
  return (DW_DLV_ERROR);
 }


 if (die == ((void*)0))
  return (dwarf_offdie_b(dbg, cu->cu_1st_offset, is_info,
      ret_die, error));





 if (is_info != die->die_cu->cu_is_info) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }





 search_sibling = 0;
 if (die->die_ab->ab_children == DW_CHILDREN_no)
  offset = die->die_next_off;
 else {




  if ((at = _dwarf_attr_find(die, DW_AT_sibling)) != ((void*)0)) {
   if (at->at_form != DW_FORM_ref_addr)
    offset = at->u[0].u64 + cu->cu_offset;
   else
    offset = at->u[0].u64;
  } else {
   offset = die->die_next_off;
   search_sibling = 1;
  }
 }

 ret = _dwarf_die_parse(die->die_dbg, ds, cu, cu->cu_dwarf_size, offset,
     cu->cu_next_offset, ret_die, search_sibling, error);

 if (ret == DW_DLE_NO_ENTRY) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 } else if (ret != DW_DLE_NONE)
  return (DW_DLV_ERROR);

 return (DW_DLV_OK);
}
