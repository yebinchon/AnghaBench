
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dbg_frame_rule_table_size; TYPE_1__* dbg_internal_reg_table; } ;
struct TYPE_6__ {int rt3_reg_table_size; int * rt3_rules; } ;
typedef int Dwarf_Regtable_Entry3 ;
typedef TYPE_1__ Dwarf_Regtable3 ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Debug ;


 int DWARF_SET_ERROR (TYPE_2__*,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 void* calloc (int,int) ;
 int free (TYPE_1__*) ;

int
_dwarf_frame_interal_table_init(Dwarf_Debug dbg, Dwarf_Error *error)
{
 Dwarf_Regtable3 *rt;

 if (dbg->dbg_internal_reg_table != ((void*)0))
  return (DW_DLE_NONE);


 if ((rt = calloc(1, sizeof(Dwarf_Regtable3))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 rt->rt3_reg_table_size = dbg->dbg_frame_rule_table_size;
 if ((rt->rt3_rules = calloc(rt->rt3_reg_table_size,
     sizeof(Dwarf_Regtable_Entry3))) == ((void*)0)) {
  free(rt);
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 dbg->dbg_internal_reg_table = rt;

 return (DW_DLE_NONE);
}
