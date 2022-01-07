
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;





 int assert (int ) ;

int
dwarf_get_DS_name(unsigned ds, const char **s)
{

 assert(s != ((void*)0));

 switch (ds) {
 case 128:
  *s = "DW_DS_unsigned"; break;
 case 132:
  *s = "DW_DS_leading_overpunch"; break;
 case 130:
  *s = "DW_DS_trailing_overpunch"; break;
 case 131:
  *s = "DW_DS_leading_separate"; break;
 case 129:
  *s = "DW_DS_trailing_separate";
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
