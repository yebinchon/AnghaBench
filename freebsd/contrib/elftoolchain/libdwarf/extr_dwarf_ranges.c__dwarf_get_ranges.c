
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cu_pointer_size; } ;
struct TYPE_7__ {int rl_rglen; int * rl_rgarray; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Ranges ;
typedef TYPE_1__* Dwarf_Rangelist ;
typedef int Dwarf_Off ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;
typedef TYPE_2__* Dwarf_CU ;


 int DW_DLE_NONE ;
 scalar_t__ DW_DLE_NO_ENTRY ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 int _dwarf_ranges_add (int ,TYPE_2__*,int ,TYPE_1__**,int *) ;
 scalar_t__ _dwarf_ranges_find (int ,int ,TYPE_1__**) ;
 int assert (int ) ;

__attribute__((used)) static int
_dwarf_get_ranges(Dwarf_Debug dbg, Dwarf_CU cu, Dwarf_Off off,
    Dwarf_Ranges **ranges, Dwarf_Signed *ret_cnt, Dwarf_Unsigned *ret_byte_cnt,
    Dwarf_Error *error)
{
 Dwarf_Rangelist rl;
 int ret;

 assert(cu != ((void*)0));
 if (_dwarf_ranges_find(dbg, off, &rl) == DW_DLE_NO_ENTRY) {
  ret = _dwarf_ranges_add(dbg, cu, off, &rl, error);
  if (ret != DW_DLE_NONE)
   return (DW_DLV_ERROR);
 }

 *ranges = rl->rl_rgarray;
 *ret_cnt = rl->rl_rglen;

 if (ret_byte_cnt != ((void*)0))
  *ret_byte_cnt = cu->cu_pointer_size * rl->rl_rglen * 2;

 return (DW_DLV_OK);
}
