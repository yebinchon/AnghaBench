#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dwarf2_cu {int dummy; } ;
struct die_info {int tag; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
#define  DW_TAG_array_type 146 
#define  DW_TAG_base_type 145 
#define  DW_TAG_class_type 144 
#define  DW_TAG_const_type 143 
#define  DW_TAG_enumeration_type 142 
#define  DW_TAG_pointer_type 141 
#define  DW_TAG_ptr_to_member_type 140 
#define  DW_TAG_reference_type 139 
#define  DW_TAG_restrict_type 138 
#define  DW_TAG_rvalue_reference_type 137 
#define  DW_TAG_string_type 136 
#define  DW_TAG_structure_type 135 
#define  DW_TAG_subprogram 134 
#define  DW_TAG_subrange_type 133 
#define  DW_TAG_subroutine_type 132 
#define  DW_TAG_typedef 131 
#define  DW_TAG_union_type 130 
#define  DW_TAG_unspecified_type 129 
#define  DW_TAG_volatile_type 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char const* processing_current_prefix ; 
 int /*<<< orphan*/  FUNC5 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC6 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC7 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC8 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC9 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC10 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC11 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC12 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC13 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC14 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC15 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC16 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC17 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC18 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC19 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 int /*<<< orphan*/  xfree ; 

__attribute__((used)) static void
FUNC20 (struct die_info *die, struct dwarf2_cu *cu)
{
  char *prefix = FUNC1 (die, cu);
  const char *old_prefix = processing_current_prefix;
  struct cleanup *back_to = FUNC4 (xfree, prefix);
  processing_current_prefix = prefix;
  
  switch (die->tag)
    {
    case DW_TAG_class_type:
    case DW_TAG_structure_type:
    case DW_TAG_union_type:
      FUNC8 (die, cu);
      break;
    case DW_TAG_enumeration_type:
      FUNC7 (die, cu);
      break;
    case DW_TAG_subprogram:
    case DW_TAG_subroutine_type:
      FUNC10 (die, cu);
      break;
    case DW_TAG_array_type:
      FUNC5 (die, cu);
      break;
    case DW_TAG_pointer_type:
      FUNC12 (die, cu);
      break;
    case DW_TAG_unspecified_type:
      FUNC17 (die, cu);
      break;
    case DW_TAG_ptr_to_member_type:
      FUNC13 (die, cu);
      break;
    case DW_TAG_reference_type:
    case DW_TAG_rvalue_reference_type:
      FUNC14 (die, cu);
      break;
    case DW_TAG_const_type:
      FUNC11 (die, cu);
      break;
    case DW_TAG_volatile_type:
      FUNC18 (die, cu);
      break;
    case DW_TAG_restrict_type:
      FUNC15 (die, cu);
      break;
    case DW_TAG_string_type:
      FUNC16 (die, cu);
      break;
    case DW_TAG_typedef:
      FUNC19 (die, cu);
      break;
    case DW_TAG_subrange_type:
      FUNC9 (die, cu);
      break;
    case DW_TAG_base_type:
      FUNC6 (die, cu);
      break;
    default:
      FUNC0 (&symfile_complaints, "unexepected tag in read_type_die: '%s'",
		 FUNC3 (die->tag));
      break;
    }

  processing_current_prefix = old_prefix;
  FUNC2 (back_to);
}