
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_7__ {int cu_dbg; } ;
struct TYPE_6__ {int die_dbg; TYPE_2__* die_cu; int * die_ab; void* die_abnum; void* die_offset; } ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Die ;
typedef int Dwarf_Debug ;
typedef TYPE_2__* Dwarf_CU ;
typedef int * Dwarf_Abbrev ;


 int DW_DLE_NONE ;
 int _dwarf_die_alloc (int ,TYPE_1__**,int *) ;
 int assert (int ) ;

__attribute__((used)) static int
_dwarf_die_add(Dwarf_CU cu, uint64_t offset, uint64_t abnum, Dwarf_Abbrev ab,
    Dwarf_Die *diep, Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 Dwarf_Die die;
 int ret;

 assert(cu != ((void*)0));
 assert(ab != ((void*)0));

 dbg = cu->cu_dbg;

 if ((ret = _dwarf_die_alloc(dbg, &die, error)) != DW_DLE_NONE)
  return (ret);

 die->die_offset = offset;
 die->die_abnum = abnum;
 die->die_ab = ab;
 die->die_cu = cu;
 die->die_dbg = cu->cu_dbg;

 if (diep != ((void*)0))
  *diep = die;

 return (DW_DLE_NONE);
}
