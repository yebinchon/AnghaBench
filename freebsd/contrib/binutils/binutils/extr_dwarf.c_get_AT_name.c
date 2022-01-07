
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned long) ;

__attribute__((used)) static char *
get_AT_name (unsigned long attribute)
{
  switch (attribute)
    {
    case 148: return "DW_AT_sibling";
    case 164: return "DW_AT_location";
    case 158: return "DW_AT_name";
    case 156: return "DW_AT_ordering";
    case 138: return "DW_AT_subscr_data";
    case 197: return "DW_AT_byte_size";
    case 201: return "DW_AT_bit_offset";
    case 200: return "DW_AT_bit_size";
    case 177: return "DW_AT_element_list";
    case 142: return "DW_AT_stmt_list";
    case 163: return "DW_AT_low_pc";
    case 170: return "DW_AT_high_pc";
    case 165: return "DW_AT_language";
    case 159: return "DW_AT_member";
    case 180: return "DW_AT_discr";
    case 178: return "DW_AT_discr_value";
    case 129: return "DW_AT_visibility";
    case 168: return "DW_AT_import";
    case 139: return "DW_AT_string_length";
    case 192: return "DW_AT_common_reference";
    case 191: return "DW_AT_comp_dir";
    case 190: return "DW_AT_const_value";
    case 189: return "DW_AT_containing_type";
    case 181: return "DW_AT_default_value";
    case 167: return "DW_AT_inline";
    case 166: return "DW_AT_is_optional";
    case 162: return "DW_AT_lower_bound";
    case 154: return "DW_AT_producer";
    case 153: return "DW_AT_prototyped";
    case 151: return "DW_AT_return_addr";
    case 144: return "DW_AT_start_scope";
    case 140: return "DW_AT_stride_size";
    case 134: return "DW_AT_upper_bound";
    case 208: return "DW_AT_abstract_origin";
    case 207: return "DW_AT_accessibility";
    case 206: return "DW_AT_address_class";
    case 204: return "DW_AT_artificial";
    case 202: return "DW_AT_base_types";
    case 193: return "DW_AT_calling_convention";
    case 188: return "DW_AT_count";
    case 186: return "DW_AT_data_member_location";
    case 185: return "DW_AT_decl_column";
    case 184: return "DW_AT_decl_file";
    case 183: return "DW_AT_decl_line";
    case 182: return "DW_AT_declaration";
    case 179: return "DW_AT_discr_list";
    case 176: return "DW_AT_encoding";
    case 173: return "DW_AT_external";
    case 172: return "DW_AT_frame_base";
    case 171: return "DW_AT_friend";
    case 169: return "DW_AT_identifier_case";
    case 160: return "DW_AT_macro_info";
    case 157: return "DW_AT_namelist_items";
    case 155: return "DW_AT_priority";
    case 150: return "DW_AT_segment";
    case 147: return "DW_AT_specification";
    case 143: return "DW_AT_static_link";
    case 136: return "DW_AT_type";
    case 132: return "DW_AT_use_location";
    case 131: return "DW_AT_variable_parameter";
    case 130: return "DW_AT_virtuality";
    case 128: return "DW_AT_vtable_elem_location";

    case 205: return "DW_AT_allocated";
    case 203: return "DW_AT_associated";
    case 187: return "DW_AT_data_location";
    case 141: return "DW_AT_stride";
    case 175: return "DW_AT_entry_pc";
    case 133: return "DW_AT_use_UTF8";
    case 174: return "DW_AT_extension";
    case 152: return "DW_AT_ranges";
    case 137: return "DW_AT_trampoline";
    case 196: return "DW_AT_call_column";
    case 195: return "DW_AT_call_file";
    case 194: return "DW_AT_call_line";

    case 216: return "DW_AT_MIPS_fde";
    case 213: return "DW_AT_MIPS_loop_begin";
    case 209: return "DW_AT_MIPS_tail_loop_begin";
    case 217: return "DW_AT_MIPS_epilog_begin";
    case 212: return "DW_AT_MIPS_loop_unroll_factor";
    case 211:
      return "DW_AT_MIPS_software_pipeline_depth";
    case 214: return "DW_AT_MIPS_linkage_name";
    case 210: return "DW_AT_MIPS_stride";
    case 219: return "DW_AT_MIPS_abstract_name";
    case 218: return "DW_AT_MIPS_clone_origin";
    case 215: return "DW_AT_MIPS_has_inlines";

    case 149: return "DW_AT_sf_names";
    case 145: return "DW_AT_src_info";
    case 161: return "DW_AT_mac_info";
    case 146: return "DW_AT_src_coords";
    case 199: return "DW_AT_body_begin";
    case 198: return "DW_AT_body_end";
    case 220: return "DW_AT_GNU_vector";

    case 135: return "DW_AT_upc_threads_scaled";
    default:
      {
 static char buffer[100];

 snprintf (buffer, sizeof (buffer), _("Unknown AT value: %lx"),
    attribute);
 return buffer;
      }
    }
}
