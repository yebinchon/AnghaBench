
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_FORM_name(unsigned form, const char **s)
{

 assert(s != ((void*)0));

 switch (form) {
 case 152:
  *s = "DW_FORM_addr"; break;
 case 151:
  *s = "DW_FORM_block"; break;
 case 150:
  *s = "DW_FORM_block1"; break;
 case 149:
  *s = "DW_FORM_block2"; break;
 case 148:
  *s = "DW_FORM_block4"; break;
 case 147:
  *s = "DW_FORM_data1"; break;
 case 146:
  *s = "DW_FORM_data2"; break;
 case 145:
  *s = "DW_FORM_data4"; break;
 case 144:
  *s = "DW_FORM_data8"; break;
 case 143:
  *s = "DW_FORM_exprloc"; break;
 case 142:
  *s = "DW_FORM_flag"; break;
 case 141:
  *s = "DW_FORM_flag_present"; break;
 case 140:
  *s = "DW_FORM_indirect"; break;
 case 139:
  *s = "DW_FORM_ref1"; break;
 case 138:
  *s = "DW_FORM_ref2"; break;
 case 137:
  *s = "DW_FORM_ref4"; break;
 case 136:
  *s = "DW_FORM_ref8"; break;
 case 135:
  *s = "DW_FORM_ref_addr"; break;
 case 134:
  *s = "DW_FORM_ref_sig8"; break;
 case 133:
  *s = "DW_FORM_ref_udata"; break;
 case 132:
  *s = "DW_FORM_sdata"; break;
 case 131:
  *s = "DW_FORM_sec_offset"; break;
 case 130:
  *s = "DW_FORM_string"; break;
 case 129:
  *s = "DW_FORM_strp"; break;
 case 128:
  *s = "DW_FORM_udata"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
