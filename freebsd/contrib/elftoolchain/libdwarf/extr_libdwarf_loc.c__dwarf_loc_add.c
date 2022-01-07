
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* u; int * at_ld; } ;
struct TYPE_9__ {int cu_length_size; int cu_version; int cu_pointer_size; int * cu_dbg; } ;
struct TYPE_8__ {TYPE_3__* die_cu; } ;
struct TYPE_7__ {int u64; int * u8p; } ;
typedef int Dwarf_Error ;
typedef TYPE_2__* Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef TYPE_3__* Dwarf_CU ;
typedef TYPE_4__* Dwarf_Attribute ;


 int _dwarf_loc_fill_locexpr (int *,int **,int *,int ,int ,int,int ,int *) ;
 int assert (int) ;

int
_dwarf_loc_add(Dwarf_Die die, Dwarf_Attribute at, Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 Dwarf_CU cu;
 int ret;

 assert(at->at_ld == ((void*)0));
 assert(at->u[1].u8p != ((void*)0));
 assert(at->u[0].u64 > 0);

 cu = die->die_cu;
 assert(cu != ((void*)0));

 dbg = cu->cu_dbg;
 assert(dbg != ((void*)0));

 ret = _dwarf_loc_fill_locexpr(dbg, &at->at_ld, at->u[1].u8p,
     at->u[0].u64, cu->cu_pointer_size, cu->cu_length_size == 4 ? 4 : 8,
     cu->cu_version, error);

 return (ret);
}
