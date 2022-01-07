
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cu_length_size; scalar_t__ cu_length; scalar_t__ cu_offset; } ;
struct TYPE_4__ {TYPE_2__* die_cu; int * die_dbg; } ;
typedef scalar_t__ Dwarf_Off ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Die ;
typedef int * Dwarf_Debug ;
typedef TYPE_2__* Dwarf_CU ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_die_CU_offset_range(Dwarf_Die die, Dwarf_Off *cu_offset,
    Dwarf_Off *cu_length, Dwarf_Error *error)
{
 Dwarf_Debug dbg;
 Dwarf_CU cu;

 dbg = die != ((void*)0) ? die->die_dbg : ((void*)0);

 if (die == ((void*)0) || cu_offset == ((void*)0) || cu_length == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 cu = die->die_cu;
 assert(cu != ((void*)0));

 *cu_offset = cu->cu_offset;
 *cu_length = cu->cu_length + cu->cu_length_size;

 return (DW_DLV_OK);
}
