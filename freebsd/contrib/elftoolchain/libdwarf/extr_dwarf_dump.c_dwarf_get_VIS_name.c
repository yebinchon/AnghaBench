
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;



 int assert (int ) ;

int
dwarf_get_VIS_name(unsigned vis, const char **s)
{

 assert(s != ((void*)0));

 switch (vis) {
 case 129:
  *s = "DW_VIS_local"; break;
 case 130:
  *s = "DW_VIS_exported"; break;
 case 128:
  *s = "DW_VIS_qualified"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
