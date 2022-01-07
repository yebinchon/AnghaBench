
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;



 int assert (int ) ;

int
dwarf_get_VIRTUALITY_name(unsigned vir, const char **s)
{

 assert(s != ((void*)0));

 switch (vir) {
 case 130:
  *s = "DW_VIRTUALITY_none"; break;
 case 128:
  *s = "DW_VIRTUALITY_virtual"; break;
 case 129:
  *s = "DW_VIRTUALITY_pure_virtual"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
