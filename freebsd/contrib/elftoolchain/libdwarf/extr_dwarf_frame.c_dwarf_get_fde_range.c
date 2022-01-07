
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fde_offset; TYPE_1__* fde_cie; int fde_cieoff; int fde_length; int fde_addr; int fde_adrange; int fde_initloc; int * fde_dbg; } ;
struct TYPE_4__ {int cie_index; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Ptr ;
typedef int Dwarf_Off ;
typedef TYPE_2__* Dwarf_Fde ;
typedef int Dwarf_Error ;
typedef int * Dwarf_Debug ;
typedef int Dwarf_Addr ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_get_fde_range(Dwarf_Fde fde, Dwarf_Addr *low_pc, Dwarf_Unsigned *func_len,
    Dwarf_Ptr *fde_bytes, Dwarf_Unsigned *fde_byte_len, Dwarf_Off *cie_offset,
    Dwarf_Signed *cie_index, Dwarf_Off *fde_offset, Dwarf_Error *error)
{
 Dwarf_Debug dbg;

 dbg = fde != ((void*)0) ? fde->fde_dbg : ((void*)0);

 if (fde == ((void*)0) || low_pc == ((void*)0) || func_len == ((void*)0) ||
     fde_bytes == ((void*)0) || fde_byte_len == ((void*)0) || cie_offset == ((void*)0) ||
     cie_index == ((void*)0) || fde_offset == ((void*)0)) {
  DWARF_SET_ERROR(dbg, error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *low_pc = fde->fde_initloc;
 *func_len = fde->fde_adrange;
 *fde_bytes = fde->fde_addr;
 *fde_byte_len = fde->fde_length;
 *cie_offset = fde->fde_cieoff;
 *cie_index = fde->fde_cie->cie_index;
 *fde_offset = fde->fde_offset;

 return (DW_DLV_OK);
}
