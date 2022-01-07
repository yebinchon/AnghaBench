
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int cu_next_offset; int cu_dwarf_size; scalar_t__ cu_is_info; } ;
struct TYPE_13__ {int * dbg_types_sec; int * dbg_info_sec; } ;
struct TYPE_12__ {int die_next_off; TYPE_3__* die_dbg; TYPE_4__* die_cu; TYPE_1__* die_ab; } ;
struct TYPE_11__ {scalar_t__ ab_children; } ;
typedef int Dwarf_Section ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Die ;
typedef TYPE_3__* Dwarf_Debug ;
typedef TYPE_4__* Dwarf_CU ;


 int DWARF_SET_ERROR (TYPE_3__*,int *,int) ;
 scalar_t__ DW_CHILDREN_no ;
 int DW_DLE_ARGUMENT ;
 int DW_DLE_NONE ;
 int DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int _dwarf_die_parse (TYPE_3__*,int *,TYPE_4__*,int ,int ,int ,TYPE_2__**,int ,int *) ;

int
dwarf_child(Dwarf_Die die, Dwarf_Die *ret_die, Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 Dwarf_Section *ds;
 Dwarf_CU cu;
 int ret;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 if (die == ((void*)0) || ret_die == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 if (die->die_ab->ab_children == DW_CHILDREN_no)
  return (DW_DLV_NO_ENTRY);

 dbg = die->die_dbg;
 cu = die->die_cu;
 ds = cu->cu_is_info ? dbg->dbg_info_sec : dbg->dbg_types_sec;
 ret = _dwarf_die_parse(die->die_dbg, ds, cu, cu->cu_dwarf_size,
     die->die_next_off, cu->cu_next_offset, ret_die, 0, error);

 if (ret == DW_DLE_NO_ENTRY) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_NO_ENTRY);
  return (DW_DLV_NO_ENTRY);
 } else if (ret != DW_DLE_NONE)
  return (DW_DLV_ERROR);

 return (DW_DLV_OK);
}
