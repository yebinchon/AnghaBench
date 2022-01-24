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
struct Func {void* call_file; void* call_line; struct Func* inlined_caller; void* hipc; void* lopc; scalar_t__ ranges_cnt; int /*<<< orphan*/ * ranges; int /*<<< orphan*/ * name; } ;
struct CU {int /*<<< orphan*/  funclist; } ;
typedef  void* Dwarf_Unsigned ;
typedef  scalar_t__ Dwarf_Signed ;
typedef  int /*<<< orphan*/  Dwarf_Ranges ;
typedef  int /*<<< orphan*/  Dwarf_Off ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/ * Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_abstract_origin ; 
 int /*<<< orphan*/  DW_AT_call_file ; 
 int /*<<< orphan*/  DW_AT_call_line ; 
 int /*<<< orphan*/  DW_AT_high_pc ; 
 int /*<<< orphan*/  DW_AT_low_pc ; 
 int /*<<< orphan*/  DW_AT_name ; 
 int /*<<< orphan*/  DW_AT_ranges ; 
 int /*<<< orphan*/  DW_AT_specification ; 
 int /*<<< orphan*/  DW_DLA_DIE ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
 scalar_t__ DW_TAG_entry_point ; 
 scalar_t__ DW_TAG_inlined_subroutine ; 
 scalar_t__ DW_TAG_subprogram ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct Func*,int /*<<< orphan*/ ) ; 
 struct Func* FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (int /*<<< orphan*/ *,void*,void**) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/ * FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(Dwarf_Debug dbg, Dwarf_Die die, struct Func *parent, struct CU *cu)
{
	Dwarf_Die ret_die, abst_die, spec_die;
	Dwarf_Error de;
	Dwarf_Half tag;
	Dwarf_Unsigned lopc, hipc, ranges_off;
	Dwarf_Signed ranges_cnt;
	Dwarf_Off ref;
	Dwarf_Attribute abst_at, spec_at;
	Dwarf_Ranges *ranges;
	const char *funcname;
	struct Func *f;
	int found_ranges, ret;

	f = NULL;
	abst_die = spec_die = NULL;

	if (FUNC12(die, &tag, &de)) {
		FUNC16("dwarf_tag: %s", FUNC7(de));
		goto cont_search;
	}
	if (tag == DW_TAG_subprogram || tag == DW_TAG_entry_point ||
	    tag == DW_TAG_inlined_subroutine) {
		/*
		 * Function address range can be specified by either
		 * a DW_AT_ranges attribute which points to a range list or
		 * by a pair of DW_AT_low_pc and DW_AT_high_pc attributes.
		 */
		ranges = NULL;
		ranges_cnt = 0;
		found_ranges = 0;
		if (FUNC4(die, DW_AT_ranges, &ranges_off,
		    &de) == DW_DLV_OK &&
		    FUNC8(dbg, (Dwarf_Off) ranges_off, &ranges,
		    &ranges_cnt, NULL, &de) == DW_DLV_OK) {
			if (ranges != NULL && ranges_cnt > 0) {
				found_ranges = 1;
				goto get_func_name;
			}
		}

		/*
		 * Search for DW_AT_low_pc/DW_AT_high_pc if ranges pointer
		 * not found.
		 */
		if (FUNC4(die, DW_AT_low_pc, &lopc, &de) ||
		    FUNC4(die, DW_AT_high_pc, &hipc, &de))
			goto cont_search;
		if (FUNC14(die, lopc, &hipc) != DW_DLV_OK)
			goto cont_search;

	get_func_name:
		/*
		 * Most common case the function name is stored in DW_AT_name
		 * attribute.
		 */
		if (FUNC3(die, DW_AT_name, &funcname, &de) ==
		    DW_DLV_OK)
			goto add_func;

		/*
		 * For inlined function, the actual name is probably in the DIE
		 * referenced by DW_AT_abstract_origin. (if present)
		 */
		if (FUNC2(die, DW_AT_abstract_origin, &abst_at, &de) ==
		    DW_DLV_OK &&
		    FUNC9(abst_at, &ref, &de) == DW_DLV_OK &&
		    FUNC10(dbg, ref, &abst_die, &de) == DW_DLV_OK &&
		    FUNC3(abst_die, DW_AT_name, &funcname,
		    &de) == DW_DLV_OK)
			goto add_func;

		/*
		 * If DW_AT_name is not present, but DW_AT_specification is
		 * present, then probably the actual name is in the DIE
		 * referenced by DW_AT_specification.
		 */
		if (FUNC2(die, DW_AT_specification, &spec_at, &de) ==
		    DW_DLV_OK &&
		    FUNC9(spec_at, &ref, &de) == DW_DLV_OK &&
		    FUNC10(dbg, ref, &spec_die, &de) == DW_DLV_OK &&
		    FUNC3(spec_die, DW_AT_name, &funcname,
		    &de) == DW_DLV_OK)
			goto add_func;

		/* Skip if no name associated with this DIE. */
		goto cont_search;

	add_func:
		if ((f = FUNC1(1, sizeof(*f))) == NULL)
			FUNC13(EXIT_FAILURE, "calloc");
		if ((f->name = FUNC15(funcname)) == NULL)
			FUNC13(EXIT_FAILURE, "strdup");
		if (found_ranges) {
			f->ranges = ranges;
			f->ranges_cnt = ranges_cnt;
		} else {
			f->lopc = lopc;
			f->hipc = hipc;
		}
		if (tag == DW_TAG_inlined_subroutine) {
			f->inlined_caller = parent;
			FUNC4(die, DW_AT_call_file,
			    &f->call_file, &de);
			FUNC4(die, DW_AT_call_line,
			    &f->call_line, &de);
		}
		FUNC0(&cu->funclist, f, next);
	}

cont_search:

	/* Search children. */
	ret = FUNC5(die, &ret_die, &de);
	if (ret == DW_DLV_ERROR)
		FUNC16("dwarf_child: %s", FUNC7(de));
	else if (ret == DW_DLV_OK) {
		if (f != NULL)
			FUNC17(dbg, ret_die, f, cu);
		else
			FUNC17(dbg, ret_die, parent, cu);
	}

	/* Search sibling. */
	ret = FUNC11(dbg, die, &ret_die, &de);
	if (ret == DW_DLV_ERROR)
		FUNC16("dwarf_siblingof: %s", FUNC7(de));
	else if (ret == DW_DLV_OK)
		FUNC17(dbg, ret_die, parent, cu);

	/* Cleanup */
	FUNC6(dbg, die, DW_DLA_DIE);

	if (abst_die != NULL)
		FUNC6(dbg, abst_die, DW_DLA_DIE);

	if (spec_die != NULL)
		FUNC6(dbg, spec_die, DW_DLA_DIE);
}