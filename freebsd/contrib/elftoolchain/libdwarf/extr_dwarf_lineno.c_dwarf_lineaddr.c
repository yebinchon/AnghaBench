
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ln_addr; } ;
typedef TYPE_1__* Dwarf_Line ;
typedef int Dwarf_Error ;
typedef int Dwarf_Addr ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_lineaddr(Dwarf_Line ln, Dwarf_Addr *ret_lineaddr, Dwarf_Error *error)
{

 if (ln == ((void*)0) || ret_lineaddr == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *ret_lineaddr = ln->ln_addr;

 return (DW_DLV_OK);
}
