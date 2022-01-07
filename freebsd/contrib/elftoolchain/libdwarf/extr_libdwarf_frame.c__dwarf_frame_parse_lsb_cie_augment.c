
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint64_t ;
struct TYPE_4__ {char* cie_augment; char* cie_augdata; int cie_fde_encode; } ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;
typedef TYPE_1__* Dwarf_Cie ;


 int DWARF_SET_ERROR (int ,int *,int) ;
 int DW_DLE_FRAME_AUGMENTATION_UNKNOWN ;
 int DW_DLE_NONE ;
 int _dwarf_frame_read_lsb_encoded (int ,TYPE_1__*,int *,char*,int *,char,int ,int *) ;
 int assert (int) ;

__attribute__((used)) static int
_dwarf_frame_parse_lsb_cie_augment(Dwarf_Debug dbg, Dwarf_Cie cie,
    Dwarf_Error *error)
{
 uint8_t *aug_p, *augdata_p;
 uint64_t val, offset;
 uint8_t encode;
 int ret;

 assert(cie->cie_augment != ((void*)0) && *cie->cie_augment == 'z');






 aug_p = &cie->cie_augment[1];
 augdata_p = cie->cie_augdata;
 while (*aug_p != '\0') {
  switch (*aug_p) {
  case 'S':
   break;
  case 'L':

   augdata_p++;
   break;
  case 'P':

   encode = *augdata_p++;
   offset = 0;
   ret = _dwarf_frame_read_lsb_encoded(dbg, cie, &val,
       augdata_p, &offset, encode, 0, error);
   if (ret != DW_DLE_NONE)
    return (ret);
   augdata_p += offset;
   break;
  case 'R':
   cie->cie_fde_encode = *augdata_p++;
   break;
  default:
   DWARF_SET_ERROR(dbg, error,
       DW_DLE_FRAME_AUGMENTATION_UNKNOWN);
   return (DW_DLE_FRAME_AUGMENTATION_UNKNOWN);
  }
  aug_p++;
 }

 return (DW_DLE_NONE);
}
