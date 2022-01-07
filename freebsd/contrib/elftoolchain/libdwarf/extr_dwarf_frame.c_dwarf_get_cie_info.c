
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cie_instlen; int cie_initinst; int cie_ra; int cie_daf; int cie_caf; scalar_t__ cie_augment; int cie_version; int cie_length; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef int Dwarf_Ptr ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Cie ;


 int DWARF_SET_ERROR (int *,int *,int ) ;
 int DW_DLE_ARGUMENT ;
 int DW_DLV_ERROR ;
 int DW_DLV_OK ;

int
dwarf_get_cie_info(Dwarf_Cie cie, Dwarf_Unsigned *bytes_in_cie,
    Dwarf_Small *version, char **augmenter, Dwarf_Unsigned *caf,
    Dwarf_Unsigned *daf, Dwarf_Half *ra, Dwarf_Ptr *initinst,
    Dwarf_Unsigned *inst_len, Dwarf_Error *error)
{

 if (cie == ((void*)0) || bytes_in_cie == ((void*)0) || version == ((void*)0) ||
     augmenter == ((void*)0) || caf == ((void*)0) || daf == ((void*)0) || ra == ((void*)0) ||
     initinst == ((void*)0) || inst_len == ((void*)0)) {
  DWARF_SET_ERROR(((void*)0), error, DW_DLE_ARGUMENT);
  return (DW_DLV_ERROR);
 }

 *bytes_in_cie = cie->cie_length;
 *version = cie->cie_version;
 *augmenter = (char *) cie->cie_augment;
 *caf = cie->cie_caf;
 *daf = cie->cie_daf;
 *ra = cie->cie_ra;
 *initinst = cie->cie_initinst;
 *inst_len = cie->cie_instlen;

 return (DW_DLV_OK);
}
