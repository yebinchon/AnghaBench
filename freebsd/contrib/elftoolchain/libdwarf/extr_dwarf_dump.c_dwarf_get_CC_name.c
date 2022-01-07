
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_CC_name(unsigned cc, const char **s)
{

 assert(s != ((void*)0));

 switch (cc) {
 case 129:
  *s = "DW_CC_normal"; break;
 case 128:
  *s = "DW_CC_program"; break;
 case 130:
  *s = "DW_CC_nocall"; break;
 case 131:
  *s = "DW_CC_lo_user"; break;
 case 132:
  *s = "DW_CC_hi_user"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
