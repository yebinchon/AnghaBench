
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {int dummy; } ;
struct die_info {int tag; } ;
struct cleanup {int dummy; } ;
 int complaint (int *,char*,int ) ;
 char* determine_prefix (struct die_info*,struct dwarf2_cu*) ;
 int do_cleanups (struct cleanup*) ;
 int dwarf_tag_name (int) ;
 struct cleanup* make_cleanup (int ,char*) ;
 char const* processing_current_prefix ;
 int read_array_type (struct die_info*,struct dwarf2_cu*) ;
 int read_base_type (struct die_info*,struct dwarf2_cu*) ;
 int read_enumeration_type (struct die_info*,struct dwarf2_cu*) ;
 int read_structure_type (struct die_info*,struct dwarf2_cu*) ;
 int read_subrange_type (struct die_info*,struct dwarf2_cu*) ;
 int read_subroutine_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_const_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_pointer_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_ptr_to_member_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_reference_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_restrict_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_string_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_unspecified_type (struct die_info*,struct dwarf2_cu*) ;
 int read_tag_volatile_type (struct die_info*,struct dwarf2_cu*) ;
 int read_typedef (struct die_info*,struct dwarf2_cu*) ;
 int symfile_complaints ;
 int xfree ;

__attribute__((used)) static void
read_type_die (struct die_info *die, struct dwarf2_cu *cu)
{
  char *prefix = determine_prefix (die, cu);
  const char *old_prefix = processing_current_prefix;
  struct cleanup *back_to = make_cleanup (xfree, prefix);
  processing_current_prefix = prefix;

  switch (die->tag)
    {
    case 144:
    case 135:
    case 130:
      read_structure_type (die, cu);
      break;
    case 142:
      read_enumeration_type (die, cu);
      break;
    case 134:
    case 132:
      read_subroutine_type (die, cu);
      break;
    case 146:
      read_array_type (die, cu);
      break;
    case 141:
      read_tag_pointer_type (die, cu);
      break;
    case 129:
      read_tag_unspecified_type (die, cu);
      break;
    case 140:
      read_tag_ptr_to_member_type (die, cu);
      break;
    case 139:
    case 137:
      read_tag_reference_type (die, cu);
      break;
    case 143:
      read_tag_const_type (die, cu);
      break;
    case 128:
      read_tag_volatile_type (die, cu);
      break;
    case 138:
      read_tag_restrict_type (die, cu);
      break;
    case 136:
      read_tag_string_type (die, cu);
      break;
    case 131:
      read_typedef (die, cu);
      break;
    case 133:
      read_subrange_type (die, cu);
      break;
    case 145:
      read_base_type (die, cu);
      break;
    default:
      complaint (&symfile_complaints, "unexepected tag in read_type_die: '%s'",
   dwarf_tag_name (die->tag));
      break;
    }

  processing_current_prefix = old_prefix;
  do_cleanups (back_to);
}
