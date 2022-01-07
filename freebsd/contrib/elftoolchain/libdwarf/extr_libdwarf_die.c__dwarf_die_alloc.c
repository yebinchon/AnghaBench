
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _Dwarf_Die {int dummy; } ;
struct TYPE_4__ {int die_attr; } ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Die ;
typedef int Dwarf_Debug ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_MEMORY ;
 int DW_DLE_NONE ;
 int STAILQ_INIT (int *) ;
 int assert (int ) ;
 TYPE_1__* calloc (int,int) ;

int
_dwarf_die_alloc(Dwarf_Debug dbg, Dwarf_Die *ret_die, Dwarf_Error *error)
{
 Dwarf_Die die;

 assert(ret_die != ((void*)0));

 if ((die = calloc(1, sizeof(struct _Dwarf_Die))) == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_MEMORY);
  return (DW_DLE_MEMORY);
 }

 STAILQ_INIT(&die->die_attr);

 *ret_die = die;

 return (DW_DLE_NONE);
}
