
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_ATE_name(unsigned ate, const char **s)
{

 assert(s != ((void*)0));

 switch(ate) {
 case 144:
  *s = "DW_ATE_address"; break;
 case 143:
  *s = "DW_ATE_boolean"; break;
 case 142:
  *s = "DW_ATE_complex_float"; break;
 case 139:
  *s = "DW_ATE_float"; break;
 case 133:
  *s = "DW_ATE_signed"; break;
 case 132:
  *s = "DW_ATE_signed_char"; break;
 case 130:
  *s = "DW_ATE_unsigned"; break;
 case 129:
  *s = "DW_ATE_unsigned_char"; break;
 case 137:
  *s = "DW_ATE_imaginary_float"; break;
 case 134:
  *s = "DW_ATE_packed_decimal"; break;
 case 135:
  *s = "DW_ATE_numeric_string"; break;
 case 140:
  *s = "DW_ATE_edited"; break;
 case 131:
  *s = "DW_ATE_signed_fixed"; break;
 case 128:
  *s = "DW_ATE_unsigned_fixed"; break;
 case 141:
  *s = "DW_ATE_decimal_float"; break;
 case 136:
  *s = "DW_ATE_lo_user"; break;
 case 138:
  *s = "DW_ATE_hi_user"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
