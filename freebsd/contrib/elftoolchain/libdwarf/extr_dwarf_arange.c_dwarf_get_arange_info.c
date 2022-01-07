
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ar_range; int ar_address; TYPE_2__* ar_as; } ;
struct TYPE_6__ {TYPE_1__* as_cu; } ;
struct TYPE_5__ {int cu_1st_offset; int * cu_dbg; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Off ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_CU ;
typedef TYPE_2__* Dwarf_ArangeSet ;
typedef TYPE_3__* Dwarf_Arange ;
typedef int Dwarf_Addr ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_arange_info(Dwarf_Arange ar, Dwarf_Addr *start,
    Dwarf_Unsigned *length, Dwarf_Off *cu_die_offset, Dwarf_Error *error)
{
 Dwarf_CU cu;
 Dwarf_ArangeSet as;

 if (ar == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 as = ar->ar_as;
 assert(as != ((void*)0));
 cu = as->as_cu;
 assert(cu != ((void*)0));

 if (start == ((void*)0) || length == ((void*)0) ||
     cu_die_offset == ((void*)0)) {
  DWARF_SET_ERROR(cu->cu_dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *start = ar->ar_address;
 *length = ar->ar_range;
 *cu_die_offset = cu->cu_1st_offset;

 return (DW_DLV_OK);
}
