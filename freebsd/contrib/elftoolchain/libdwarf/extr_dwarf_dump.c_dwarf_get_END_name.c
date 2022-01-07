
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;





 int assert (int ) ;

int
dwarf_get_END_name(unsigned end, const char **s)
{

 assert(s != ((void*)0));

 switch (end) {
 case 131:
  *s = "DW_END_default"; break;
 case 132:
  *s = "DW_END_big"; break;
 case 129:
  *s = "DW_END_little"; break;
 case 128:
  *s = "DW_END_lo_user"; break;
 case 130:
  *s = "DW_END_high_user"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
