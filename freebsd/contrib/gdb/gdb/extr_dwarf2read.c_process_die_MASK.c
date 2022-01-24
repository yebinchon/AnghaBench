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
struct die_info {int tag; int /*<<< orphan*/ * child; int /*<<< orphan*/ * type; } ;

/* Variables and functions */
#define  DW_TAG_array_type 152 
#define  DW_TAG_base_type 151 
#define  DW_TAG_catch_block 150 
#define  DW_TAG_class_type 149 
#define  DW_TAG_common_block 148 
#define  DW_TAG_common_inclusion 147 
#define  DW_TAG_compile_unit 146 
#define  DW_TAG_enumeration_type 145 
#define  DW_TAG_imported_declaration 144 
#define  DW_TAG_imported_module 143 
#define  DW_TAG_inlined_subroutine 142 
#define  DW_TAG_lexical_block 141 
#define  DW_TAG_namespace 140 
#define  DW_TAG_padding 139 
#define  DW_TAG_pointer_type 138 
#define  DW_TAG_ptr_to_member_type 137 
#define  DW_TAG_reference_type 136 
#define  DW_TAG_rvalue_reference_type 135 
#define  DW_TAG_string_type 134 
#define  DW_TAG_structure_type 133 
#define  DW_TAG_subprogram 132 
#define  DW_TAG_subrange_type 131 
#define  DW_TAG_subroutine_type 130 
#define  DW_TAG_try_block 129 
#define  DW_TAG_union_type 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct die_info*,int /*<<< orphan*/ *,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC2 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC3 (struct die_info*,struct dwarf2_cu*) ; 
 int processing_has_namespace_info ; 
 int /*<<< orphan*/  FUNC4 (struct die_info*,struct dwarf2_cu*) ; 
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

__attribute__((used)) static void
FUNC19 (struct die_info *die, struct dwarf2_cu *cu)
{
  switch (die->tag)
    {
    case DW_TAG_padding:
      break;
    case DW_TAG_compile_unit:
      FUNC8 (die, cu);
      break;
    case DW_TAG_subprogram:
      FUNC14 (die, cu);
      FUNC9 (die, cu);
      break;
    case DW_TAG_inlined_subroutine:
      /* FIXME:  These are ignored for now.
         They could be used to set breakpoints on all inlined instances
         of a function and make GDB `next' properly over inlined functions.  */
      break;
    case DW_TAG_lexical_block:
    case DW_TAG_try_block:
    case DW_TAG_catch_block:
      FUNC10 (die, cu);
      break;
    case DW_TAG_class_type:
    case DW_TAG_structure_type:
    case DW_TAG_union_type:
      FUNC12 (die, cu);
      FUNC3 (die, cu);
      break;
    case DW_TAG_enumeration_type:
      FUNC7 (die, cu);
      FUNC2 (die, cu);
      break;

    /* FIXME drow/2004-03-14: These initialize die->type, but do not create
       a symbol or process any children.  Therefore it doesn't do anything
       that won't be done on-demand by read_type_die.  */
    case DW_TAG_subroutine_type:
      FUNC14 (die, cu);
      break;
    case DW_TAG_array_type:
      FUNC4 (die, cu);
      break;
    case DW_TAG_pointer_type:
      FUNC15 (die, cu);
      break;
    case DW_TAG_ptr_to_member_type:
      FUNC16 (die, cu);
      break;
    case DW_TAG_reference_type:
    case DW_TAG_rvalue_reference_type:
      FUNC17 (die, cu);
      break;
    case DW_TAG_string_type:
      FUNC18 (die, cu);
      break;
    /* END FIXME */

    case DW_TAG_base_type:
      FUNC5 (die, cu);
      /* Add a typedef symbol for the type definition, if it has a
	 DW_AT_name.  */
      FUNC1 (die, die->type, cu);
      break;
    case DW_TAG_subrange_type:
      FUNC13 (die, cu);
      /* Add a typedef symbol for the type definition, if it has a
         DW_AT_name.  */
      FUNC1 (die, die->type, cu);
      break;
    case DW_TAG_common_block:
      FUNC6 (die, cu);
      break;
    case DW_TAG_common_inclusion:
      break;
    case DW_TAG_namespace:
      processing_has_namespace_info = 1;
      FUNC11 (die, cu);
      break;
    case DW_TAG_imported_declaration:
    case DW_TAG_imported_module:
      /* FIXME: carlton/2002-10-16: Eventually, we should use the
	 information contained in these.  DW_TAG_imported_declaration
	 dies shouldn't have children; DW_TAG_imported_module dies
	 shouldn't in the C++ case, but conceivably could in the
	 Fortran case, so we'll have to replace this gdb_assert if
	 Fortran compilers start generating that info.  */
      processing_has_namespace_info = 1;
      FUNC0 (die->child == NULL);
      break;
    default:
      FUNC1 (die, NULL, cu);
      break;
    }
}