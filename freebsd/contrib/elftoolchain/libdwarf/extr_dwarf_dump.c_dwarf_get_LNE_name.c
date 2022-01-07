
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;





 int assert (int ) ;

int
dwarf_get_LNE_name(unsigned lne, const char **s)
{

 assert(s != ((void*)0));

 switch (lne) {
 case 131:
  *s = "DW_LNE_end_sequence"; break;
 case 128:
  *s = "DW_LNE_set_address"; break;
 case 132:
  *s = "DW_LNE_define_file"; break;
 case 129:
  *s = "DW_LNE_lo_user"; break;
 case 130:
  *s = "DW_LNE_hi_user"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
