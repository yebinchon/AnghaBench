
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DW_DLV_NO_ENTRY ;
 int DW_DLV_OK ;
 int assert (int ) ;

int
dwarf_get_AT_name(unsigned attr, const char **s)
{

 assert(s != ((void*)0));

 switch (attr) {
 case 230:
  *s = "DW_AT_abstract_origin"; break;
 case 229:
  *s = "DW_AT_accessibility"; break;
 case 228:
  *s = "DW_AT_address_class"; break;
 case 226:
  *s = "DW_AT_artificial"; break;
 case 227:
  *s = "DW_AT_allocated"; break;
 case 225:
  *s = "DW_AT_associated"; break;
 case 224:
  *s = "DW_AT_base_types"; break;
 case 223:
  *s = "DW_AT_binary_scale"; break;
 case 222:
  *s = "DW_AT_bit_offset"; break;
 case 221:
  *s = "DW_AT_bit_size"; break;
 case 220:
  *s = "DW_AT_bit_stride"; break;
 case 217:
  *s = "DW_AT_byte_size"; break;
 case 216:
  *s = "DW_AT_byte_stride"; break;
 case 212:
  *s = "DW_AT_calling_convention"; break;
 case 211:
  *s = "DW_AT_common_reference"; break;
 case 210:
  *s = "DW_AT_comp_dir"; break;
 case 209:
  *s = "DW_AT_const_expr"; break;
 case 208:
  *s = "DW_AT_const_value"; break;
 case 207:
  *s = "DW_AT_containing_type"; break;
 case 206:
  *s = "DW_AT_count"; break;
 case 215:
  *s = "DW_AT_call_column"; break;
 case 214:
  *s = "DW_AT_call_file"; break;
 case 213:
  *s = "DW_AT_call_line"; break;
 case 205:
  *s = "DW_AT_data_bit_offset"; break;
 case 204:
  *s = "DW_AT_data_location"; break;
 case 203:
  *s = "DW_AT_data_member_location"; break;
 case 200:
  *s = "DW_AT_decl_column"; break;
 case 199:
  *s = "DW_AT_decl_file"; break;
 case 198:
  *s = "DW_AT_decl_line"; break;
 case 197:
  *s = "DW_AT_declaration"; break;
 case 196:
  *s = "DW_AT_default_value"; break;
 case 202:
  *s = "DW_AT_decimal_scale"; break;
 case 201:
  *s = "DW_AT_decimal_sign"; break;
 case 195:
  *s = "DW_AT_description"; break;
 case 194:
  *s = "DW_AT_digit_count"; break;
 case 193:
  *s = "DW_AT_discr"; break;
 case 192:
  *s = "DW_AT_discr_list"; break;
 case 191:
  *s = "DW_AT_discr_value"; break;
 case 190:
  *s = "DW_AT_element_list"; break;
 case 188:
  *s = "DW_AT_encoding"; break;
 case 185:
  *s = "DW_AT_enum_class"; break;
 case 182:
  *s = "DW_AT_external"; break;
 case 186:
  *s = "DW_AT_entry_pc"; break;
 case 183:
  *s = "DW_AT_extension"; break;
 case 184:
  *s = "DW_AT_explicit"; break;
 case 187:
  *s = "DW_AT_endianity"; break;
 case 189:
  *s = "DW_AT_elemental"; break;
 case 181:
  *s = "DW_AT_frame_base"; break;
 case 180:
  *s = "DW_AT_friend"; break;
 case 178:
  *s = "DW_AT_high_pc"; break;
 case 179:
  *s = "DW_AT_hi_user"; break;
 case 177:
  *s = "DW_AT_identifier_case"; break;
 case 176:
  *s = "DW_AT_import"; break;
 case 175:
  *s = "DW_AT_inline"; break;
 case 174:
  *s = "DW_AT_is_optional"; break;
 case 173:
  *s = "DW_AT_language"; break;
 case 172:
  *s = "DW_AT_linkage_name"; break;
 case 171:
  *s = "DW_AT_lo_user"; break;
 case 170:
  *s = "DW_AT_location"; break;
 case 169:
  *s = "DW_AT_low_pc"; break;
 case 168:
  *s = "DW_AT_lower_bound"; break;
 case 166:
  *s = "DW_AT_macro_info"; break;
 case 165:
  *s = "DW_AT_main_subprogram"; break;
 case 163:
  *s = "DW_AT_mutable"; break;
 case 164:
  *s = "DW_AT_member"; break;
 case 162:
  *s = "DW_AT_name"; break;
 case 161:
  *s = "DW_AT_namelist_item"; break;
 case 159:
  *s = "DW_AT_ordering"; break;
 case 160:
  *s = "DW_AT_object_pointer"; break;
 case 157:
  *s = "DW_AT_priority"; break;
 case 156:
  *s = "DW_AT_producer"; break;
 case 155:
  *s = "DW_AT_prototyped"; break;
 case 158:
  *s = "DW_AT_picture_string"; break;
 case 154:
  *s = "DW_AT_pure"; break;
 case 151:
  *s = "DW_AT_return_addr"; break;
 case 153:
  *s = "DW_AT_ranges"; break;
 case 152:
  *s = "DW_AT_recursive"; break;
 case 150:
  *s = "DW_AT_segment"; break;
 case 148:
  *s = "DW_AT_sibling"; break;
 case 147:
  *s = "DW_AT_signature"; break;
 case 145:
  *s = "DW_AT_specification"; break;
 case 142:
  *s = "DW_AT_start_scope"; break;
 case 141:
  *s = "DW_AT_static_link"; break;
 case 140:
  *s = "DW_AT_stmt_list"; break;
 case 139:
  *s = "DW_AT_string_length"; break;
 case 138:
  *s = "DW_AT_subscr_data"; break;
 case 146:
  *s = "DW_AT_small"; break;
 case 135:
  *s = "DW_AT_type"; break;
 case 136:
  *s = "DW_AT_trampoline"; break;
 case 137:
  *s = "DW_AT_threads_scaled"; break;
 case 134:
  *s = "DW_AT_upper_bound"; break;
 case 132:
  *s = "DW_AT_use_location"; break;
 case 133:
  *s = "DW_AT_use_UTF8"; break;
 case 131:
  *s = "DW_AT_variable_parameter"; break;
 case 130:
  *s = "DW_AT_virtuality"; break;
 case 129:
  *s = "DW_AT_visibility"; break;
 case 128:
  *s = "DW_AT_vtable_elem_location"; break;
 case 149:
  *s = "DW_AT_sf_names"; break;
 case 143:
  *s = "DW_AT_src_info"; break;
 case 167:
  *s = "DW_AT_mac_info"; break;
 case 144:
  *s = "DW_AT_src_coords"; break;
 case 219:
  *s = "DW_AT_body_begin"; break;
 case 218:
  *s = "DW_AT_body_end"; break;
 case 241:
  *s = "DW_AT_MIPS_fde"; break;
 case 238:
  *s = "DW_AT_MIPS_loop_begin"; break;
 case 231:
  *s = "DW_AT_MIPS_tail_loop_begin"; break;
 case 242:
  *s = "DW_AT_MIPS_epilog_begin"; break;
 case 237:
  *s = "DW_AT_MIPS_loop_unroll_factor"; break;
 case 235:
  *s = "DW_AT_MIPS_software_pipeline_depth"; break;
 case 239:
  *s = "DW_AT_MIPS_linkage_name"; break;
 case 234:
  *s = "DW_AT_MIPS_stride"; break;
 case 247:
  *s = "DW_AT_MIPS_abstract_name"; break;
 case 243:
  *s = "DW_AT_MIPS_clone_origin"; break;
 case 240:
  *s = "DW_AT_MIPS_has_inlines"; break;
 case 233:
  *s = "DW_AT_MIPS_stride_byte"; break;
 case 232:
  *s = "DW_AT_MIPS_stride_elem"; break;
 case 236:
  *s = "DW_AT_MIPS_ptr_dopetype"; break;
 case 246:
  *s = "DW_AT_MIPS_allocatable_dopetype"; break;
 case 245:
  *s = "DW_AT_MIPS_assumed_shape_dopetype"; break;
 case 244:
  *s = "DW_AT_MIPS_assumed_size"; break;
 case 248:
  *s = "DW_AT_GNU_vector"; break;
 case 256:
  *s = "DW_AT_GNU_guarded_by"; break;
 case 252:
  *s = "DW_AT_GNU_pt_guarded_by"; break;
 case 257:
  *s = "DW_AT_GNU_guarded"; break;
 case 253:
  *s = "DW_AT_GNU_pt_guarded"; break;
 case 255:
  *s = "DW_AT_GNU_locks_excluded"; break;
 case 258:
  *s = "DW_AT_GNU_exclusive_locks_required"; break;
 case 251:
  *s = "DW_AT_GNU_shared_locks_required"; break;
 case 254:
  *s = "DW_AT_GNU_odr_signature"; break;
 case 249:
  *s = "DW_AT_GNU_template_name"; break;
 case 259:
  *s = "DW_AT_GNU_call_site_value"; break;
 case 262:
  *s = "DW_AT_GNU_call_site_data_value"; break;
 case 261:
  *s = "DW_AT_GNU_call_site_target"; break;
 case 260:
  *s = "DW_AT_GNU_call_site_target_clobbered"; break;
 case 250:
  *s = "DW_AT_GNU_tail_call"; break;
 case 263:
  *s = "DW_AT_GNU_all_tail_call_sites"; break;
 case 265:
  *s = "DW_AT_GNU_all_call_sites"; break;
 case 264:
  *s = "DW_AT_GNU_all_source_call_sites"; break;
 case 272:
  *s = "DW_AT_APPLE_optimized"; break;
 case 277:
  *s = "DW_AT_APPLE_flags"; break;
 case 276:
  *s = "DW_AT_APPLE_isa"; break;
 case 278:
  *s = "DW_AT_APPLE_block"; break;
 case 275:
  *s = "DW_AT_APPLE_major_runtime_vers"; break;
 case 266:
  *s = "DW_AT_APPLE_runtime_class"; break;
 case 273:
  *s = "DW_AT_APPLE_omit_frame_ptr"; break;
 case 268:
  *s = "DW_AT_APPLE_property_name"; break;
 case 269:
  *s = "DW_AT_APPLE_property_getter"; break;
 case 267:
  *s = "DW_AT_APPLE_property_setter"; break;
 case 270:
  *s = "DW_AT_APPLE_property_attribute"; break;
 case 274:
  *s = "DW_AT_APPLE_objc_complete_type"; break;
 case 271:
  *s = "DW_AT_APPLE_property"; break;
 default:
  return (DW_DLV_NO_ENTRY);
 }

 return (DW_DLV_OK);
}
