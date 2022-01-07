
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;





 int assert (int ) ;

int
dwarf_get_MACINFO_name(unsigned mi, const char **s)
{

 assert(s != ((void*)0));

 switch (mi) {
 case 132:
  *s = "DW_MACINFO_define"; break;
 case 129:
  *s = "DW_MACINFO_undef"; break;
 case 130:
  *s = "DW_MACINFO_start_file"; break;
 case 131:
  *s = "DW_MACINFO_end_file"; break;
 case 128:
  *s = "DW_MACINFO_vendor_ext"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
