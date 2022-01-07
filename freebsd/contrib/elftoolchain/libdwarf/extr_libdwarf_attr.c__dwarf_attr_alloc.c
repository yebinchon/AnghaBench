
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _Dwarf_Attribute {int dummy; } ;
struct TYPE_3__ {int die_dbg; } ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Die ;
typedef int * Dwarf_Attribute ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int assert (int ) ;
 int * calloc (int,int) ;

int
_dwarf_attr_alloc(Dwarf_Die die, Dwarf_Attribute *atp, Dwarf_Error *error)
{
 Dwarf_Attribute at;

 assert(die != ((void*)0));
 assert(atp != ((void*)0));

 if ((at = calloc(1, sizeof(struct _Dwarf_Attribute))) == ((void*)0)) {
  DWARF_SET_ERROR(die->die_dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 *atp = at;

 return (DW_DLE_NONE);
}
