
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_TAG_name(unsigned tag, const char **s)
{

 assert(s != ((void*)0));

 switch (tag) {
 case 189:
  *s = "DW_TAG_access_declaration"; break;
 case 188:
  *s = "DW_TAG_array_type"; break;
 case 187:
  *s = "DW_TAG_base_type"; break;
 case 186:
  *s = "DW_TAG_catch_block"; break;
 case 184:
  *s = "DW_TAG_class_type"; break;
 case 183:
  *s = "DW_TAG_common_block"; break;
 case 182:
  *s = "DW_TAG_common_inclusion"; break;
 case 181:
  *s = "DW_TAG_compile_unit"; break;
 case 180:
  *s = "DW_TAG_condition"; break;
 case 179:
  *s = "DW_TAG_const_type"; break;
 case 178:
  *s = "DW_TAG_constant"; break;
 case 177:
  *s = "DW_TAG_dwarf_procedure"; break;
 case 176:
  *s = "DW_TAG_entry_point"; break;
 case 175:
  *s = "DW_TAG_enumeration_type"; break;
 case 174:
  *s = "DW_TAG_enumerator"; break;
 case 173:
  *s = "DW_TAG_formal_parameter"; break;
 case 171:
  *s = "DW_TAG_friend"; break;
 case 169:
  *s = "DW_TAG_imported_declaration"; break;
 case 168:
  *s = "DW_TAG_imported_module"; break;
 case 167:
  *s = "DW_TAG_imported_unit"; break;
 case 166:
  *s = "DW_TAG_inheritance"; break;
 case 165:
  *s = "DW_TAG_inlined_subroutine"; break;
 case 164:
  *s = "DW_TAG_interface_type"; break;
 case 163:
  *s = "DW_TAG_label"; break;
 case 162:
  *s = "DW_TAG_lexical_block"; break;
 case 161:
  *s = "DW_TAG_member"; break;
 case 160:
  *s = "DW_TAG_module"; break;
 case 159:
  *s = "DW_TAG_namelist"; break;
 case 158:
  *s = "DW_TAG_namelist_item"; break;
 case 157:
  *s = "DW_TAG_namespace"; break;
 case 156:
  *s = "DW_TAG_packed_type"; break;
 case 155:
  *s = "DW_TAG_partial_unit"; break;
 case 154:
  *s = "DW_TAG_pointer_type"; break;
 case 153:
  *s = "DW_TAG_ptr_to_member_type"; break;
 case 152:
  *s = "DW_TAG_reference_type"; break;
 case 151:
  *s = "DW_TAG_restrict_type"; break;
 case 150:
  *s = "DW_TAG_rvalue_reference_type"; break;
 case 149:
  *s = "DW_TAG_set_type"; break;
 case 148:
  *s = "DW_TAG_shared_type"; break;
 case 147:
  *s = "DW_TAG_string_type"; break;
 case 146:
  *s = "DW_TAG_structure_type"; break;
 case 145:
  *s = "DW_TAG_subprogram"; break;
 case 144:
  *s = "DW_TAG_subrange_type"; break;
 case 143:
  *s = "DW_TAG_subroutine_type"; break;
 case 142:
  *s = "DW_TAG_template_alias"; break;
 case 141:
  *s = "DW_TAG_template_type_parameter"; break;
 case 140:
  *s = "DW_TAG_template_value_parameter"; break;
 case 139:
  *s = "DW_TAG_thrown_type"; break;
 case 138:
  *s = "DW_TAG_try_block"; break;
 case 137:
  *s = "DW_TAG_type_unit"; break;
 case 136:
  *s = "DW_TAG_typedef"; break;
 case 135:
  *s = "DW_TAG_union_type"; break;
 case 134:
  *s = "DW_TAG_unspecified_parameters"; break;
 case 133:
  *s = "DW_TAG_unspecified_type"; break;
 case 132:
  *s = "DW_TAG_variable"; break;
 case 131:
  *s = "DW_TAG_variant"; break;
 case 130:
  *s = "DW_TAG_variant_part"; break;
 case 129:
  *s = "DW_TAG_volatile_type"; break;
 case 128:
  *s = "DW_TAG_with_stmt"; break;
 case 172:
  *s = "DW_TAG_format_label"; break;
 case 170:
  *s = "DW_TAG_function_template"; break;
 case 185:
  *s = "DW_TAG_class_template"; break;
 case 196:
  *s = "DW_TAG_GNU_BINCL"; break;
 case 195:
  *s = "DW_TAG_GNU_EINCL"; break;
 case 190:
  *s = "DW_TAG_GNU_template_template_param"; break;
 case 191:
  *s = "DW_TAG_GNU_template_parameter_pack"; break;
 case 192:
  *s = "DW_TAG_GNU_formal_parameter_pack"; break;
 case 194:
  *s = "DW_TAG_GNU_call_site"; break;
 case 193:
  *s = "DW_TAG_GNU_call_site_parameter"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
