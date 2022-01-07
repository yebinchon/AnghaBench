
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_ACCESS_name(unsigned access, const char **s)
{

 assert(s != ((void*)0));

 switch (access) {
 case 128:
  *s = "DW_ACCESS_public"; break;
 case 129:
  *s = "DW_ACCESS_protected"; break;
 case 130:
  *s = "DW_ACCESS_private"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
