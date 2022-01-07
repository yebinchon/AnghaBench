
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_ndx; int ds_symndx; scalar_t__ ds_size; int ds_name; } ;
typedef int Dwarf_Unsigned ;
typedef TYPE_1__* Dwarf_P_Section ;
typedef int Dwarf_P_Debug ;
typedef int Dwarf_Error ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_ELF_SECT_ERR ;
 int DW_DLE_NONE ;
 int _dwarf_pro_callback (int ,int ,int,int ,int ,int ,int ,int *,int *) ;

int
_dwarf_section_callback(Dwarf_P_Debug dbg, Dwarf_P_Section ds,
    Dwarf_Unsigned type, Dwarf_Unsigned flags, Dwarf_Unsigned link,
    Dwarf_Unsigned info, Dwarf_Error *error)
{
 int ret, ndx;

 ndx = _dwarf_pro_callback(dbg, ds->ds_name, (int) ds->ds_size,
     type, flags, link, info, &ds->ds_symndx, ((void*)0));
 if (ndx < 0) {
  ret = DW_DLE_ELF_SECT_ERR;
  DWARF_SET_ERROR(dbg, error, ret);
  return (ret);
 }
 ds->ds_ndx = ndx;

 return (DW_DLE_NONE);
}
