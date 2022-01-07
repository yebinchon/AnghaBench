
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_CFA_name(unsigned cfa, const char **s)
{

 assert(s != ((void*)0));

 switch (cfa) {
 case 155:
  *s = "DW_CFA_advance_loc"; break;
 case 141:
  *s = "DW_CFA_offset"; break;
 case 136:
  *s = "DW_CFA_restore"; break;
 case 142:
  *s = "DW_CFA_nop"; break;
 case 132:
  *s = "DW_CFA_set_loc"; break;
 case 154:
  *s = "DW_CFA_advance_loc1"; break;
 case 153:
  *s = "DW_CFA_advance_loc2"; break;
 case 152:
  *s = "DW_CFA_advance_loc4"; break;
 case 140:
  *s = "DW_CFA_offset_extended"; break;
 case 135:
  *s = "DW_CFA_restore_extended"; break;
 case 131:
  *s = "DW_CFA_undefined"; break;
 case 133:
  *s = "DW_CFA_same_value"; break;
 case 138:
  *s = "DW_CFA_register"; break;
 case 137:
  *s = "DW_CFA_remember_state"; break;
 case 134:
  *s = "DW_CFA_restore_state"; break;
 case 151:
  *s = "DW_CFA_def_cfa"; break;
 case 147:
  *s = "DW_CFA_def_cfa_register"; break;
 case 149:
  *s = "DW_CFA_def_cfa_offset"; break;
 case 150:
  *s = "DW_CFA_def_cfa_expression"; break;
 case 145:
  *s = "DW_CFA_expression"; break;
 case 139:
  *s = "DW_CFA_offset_extended_sf"; break;
 case 146:
  *s = "DW_CFA_def_cfa_sf"; break;
 case 148:
  *s = "DW_CFA_def_cfa_offset_sf"; break;
 case 129:
  *s = "DW_CFA_val_offset"; break;
 case 128:
  *s = "DW_CFA_val_offset_sf"; break;
 case 130:
  *s = "DW_CFA_val_expression"; break;
 case 143:
  *s = "DW_CFA_lo_user"; break;
 case 144:
  *s = "DW_CFA_high_user"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
