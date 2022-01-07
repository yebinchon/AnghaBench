
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {int tag; int * child; int * type; } ;
 int gdb_assert (int ) ;
 int new_symbol (struct die_info*,int *,struct dwarf2_cu*) ;
 int process_enumeration_scope (struct die_info*,struct dwarf2_cu*) ;
 int process_structure_scope (struct die_info*,struct dwarf2_cu*) ;
 int processing_has_namespace_info ;
 int read_array_type (struct die_info*,struct dwarf2_cu*) ;
 int read_base_type (struct die_info*,struct dwarf2_cu*) ;
 int read_common_block (struct die_info*,struct dwarf2_cu*) ;
 int read_enumeration_type (struct die_info*,struct dwarf2_cu*) ;
 int read_file_scope (struct die_info*,struct dwarf2_cu*) ;
 int read_func_scope (struct die_info*,struct dwarf2_cu*) ;
 int read_lexical_block_scope (struct die_info*,struct dwarf2_cu*) ;
 int read_namespace (struct die_info*,struct dwarf2_cu*) ;
 int read_structure_type (struct die_info*,struct dwarf2_cu*) ;
 int read_subrange_type (struct die_info*,struct dwarf2_cu*) ;
 int read_subroutine_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_pointer_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_ptr_to_member_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_reference_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_string_type (struct die_info*,struct dwarf2_cu*) ;

__attribute__((used)) static void
process_die (struct die_info *die, struct dwarf2_cu *cu)
{
  switch (die->tag)
    {
    case 139:
      break;
    case 146:
      read_file_scope (die, cu);
      break;
    case 132:
      read_subroutine_type (die, cu);
      read_func_scope (die, cu);
      break;
    case 142:



      break;
    case 141:
    case 129:
    case 150:
      read_lexical_block_scope (die, cu);
      break;
    case 149:
    case 133:
    case 128:
      read_structure_type (die, cu);
      process_structure_scope (die, cu);
      break;
    case 145:
      read_enumeration_type (die, cu);
      process_enumeration_scope (die, cu);
      break;




    case 130:
      read_subroutine_type (die, cu);
      break;
    case 152:
      read_array_type (die, cu);
      break;
    case 138:
      read_tag_pointer_type (die, cu);
      break;
    case 137:
      read_tag_ptr_to_member_type (die, cu);
      break;
    case 136:
    case 135:
      read_tag_reference_type (die, cu);
      break;
    case 134:
      read_tag_string_type (die, cu);
      break;


    case 151:
      read_base_type (die, cu);


      new_symbol (die, die->type, cu);
      break;
    case 131:
      read_subrange_type (die, cu);


      new_symbol (die, die->type, cu);
      break;
    case 148:
      read_common_block (die, cu);
      break;
    case 147:
      break;
    case 140:
      processing_has_namespace_info = 1;
      read_namespace (die, cu);
      break;
    case 144:
    case 143:






      processing_has_namespace_info = 1;
      gdb_assert (die->child == ((void*)0));
      break;
    default:
      new_symbol (die, ((void*)0), cu);
      break;
    }
}
