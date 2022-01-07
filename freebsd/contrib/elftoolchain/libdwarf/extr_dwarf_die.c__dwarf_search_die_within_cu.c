
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cu_next_offset; int cu_dwarf_size; } ;
typedef int Dwarf_Section ;
typedef int Dwarf_Off ;
typedef int Dwarf_Error ;
typedef int Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef TYPE_1__* Dwarf_CU ;


 int _dwarf_die_parse (int *,int *,TYPE_1__*,int ,int ,int ,int *,int ,int *) ;
 int assert (int) ;

__attribute__((used)) static int
_dwarf_search_die_within_cu(Dwarf_Debug dbg, Dwarf_Section *s, Dwarf_CU cu,
    Dwarf_Off offset, Dwarf_Die *ret_die, Dwarf_Error *error)
{

 assert(dbg != ((void*)0) && cu != ((void*)0) && ret_die != ((void*)0));

 return (_dwarf_die_parse(dbg, s, cu, cu->cu_dwarf_size,
     offset, cu->cu_next_offset, ret_die, 0, error));
}
