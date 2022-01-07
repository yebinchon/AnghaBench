
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;




 int assert (int ) ;

int
dwarf_get_ID_name(unsigned id, const char **s)
{

 assert(s != ((void*)0));

 switch (id) {
 case 130:
  *s = "DW_ID_case_sensitive"; break;
 case 128:
  *s = "DW_ID_up_case"; break;
 case 129:
  *s = "DW_ID_down_case"; break;
 case 131:
  *s = "DW_ID_case_insensitive"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
