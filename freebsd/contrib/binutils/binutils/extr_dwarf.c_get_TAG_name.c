
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned long) ;

__attribute__((used)) static char *
get_TAG_name (unsigned long tag)
{
  switch (tag)
    {
    case 155: return "DW_TAG_padding";
    case 188: return "DW_TAG_array_type";
    case 184: return "DW_TAG_class_type";
    case 177: return "DW_TAG_entry_point";
    case 176: return "DW_TAG_enumeration_type";
    case 173: return "DW_TAG_formal_parameter";
    case 169: return "DW_TAG_imported_declaration";
    case 163: return "DW_TAG_label";
    case 162: return "DW_TAG_lexical_block";
    case 161: return "DW_TAG_member";
    case 153: return "DW_TAG_pointer_type";
    case 151: return "DW_TAG_reference_type";
    case 181: return "DW_TAG_compile_unit";
    case 148: return "DW_TAG_string_type";
    case 147: return "DW_TAG_structure_type";
    case 144: return "DW_TAG_subroutine_type";
    case 139: return "DW_TAG_typedef";
    case 138: return "DW_TAG_union_type";
    case 137: return "DW_TAG_unspecified_parameters";
    case 131: return "DW_TAG_variant";
    case 183: return "DW_TAG_common_block";
    case 182: return "DW_TAG_common_inclusion";
    case 166: return "DW_TAG_inheritance";
    case 165: return "DW_TAG_inlined_subroutine";
    case 160: return "DW_TAG_module";
    case 152: return "DW_TAG_ptr_to_member_type";
    case 149: return "DW_TAG_set_type";
    case 145: return "DW_TAG_subrange_type";
    case 128: return "DW_TAG_with_stmt";
    case 189: return "DW_TAG_access_declaration";
    case 187: return "DW_TAG_base_type";
    case 186: return "DW_TAG_catch_block";
    case 180: return "DW_TAG_const_type";
    case 179: return "DW_TAG_constant";
    case 175: return "DW_TAG_enumerator";
    case 174: return "DW_TAG_file_type";
    case 171: return "DW_TAG_friend";
    case 159: return "DW_TAG_namelist";
    case 158: return "DW_TAG_namelist_item";
    case 156: return "DW_TAG_packed_type";
    case 146: return "DW_TAG_subprogram";
    case 143: return "DW_TAG_template_type_param";
    case 142: return "DW_TAG_template_value_param";
    case 141: return "DW_TAG_thrown_type";
    case 140: return "DW_TAG_try_block";
    case 130: return "DW_TAG_variant_part";
    case 132: return "DW_TAG_variable";
    case 129: return "DW_TAG_volatile_type";
    case 190: return "DW_TAG_MIPS_loop";
    case 172: return "DW_TAG_format_label";
    case 170: return "DW_TAG_function_template";
    case 185: return "DW_TAG_class_template";

    case 178: return "DW_TAG_dwarf_procedure";
    case 150: return "DW_TAG_restrict_type";
    case 164: return "DW_TAG_interface_type";
    case 157: return "DW_TAG_namespace";
    case 168: return "DW_TAG_imported_module";
    case 136: return "DW_TAG_unspecified_type";
    case 154: return "DW_TAG_partial_unit";
    case 167: return "DW_TAG_imported_unit";

    case 134: return "DW_TAG_upc_shared_type";
    case 133: return "DW_TAG_upc_strict_type";
    case 135: return "DW_TAG_upc_relaxed_type";
    default:
      {
 static char buffer[100];

 snprintf (buffer, sizeof (buffer), _("Unknown TAG value: %lx"), tag);
 return buffer;
      }
    }
}
