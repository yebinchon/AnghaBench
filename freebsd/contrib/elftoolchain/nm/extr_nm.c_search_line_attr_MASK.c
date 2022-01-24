#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct var_info_head {int dummy; } ;
struct var_info_entry {int line; int lowpc; int highpc; struct var_info_entry* file; int /*<<< orphan*/ * name; int /*<<< orphan*/  addr; } ;
typedef  struct var_info_head func_info_head ;
struct func_info_entry {int line; int lowpc; int highpc; struct func_info_entry* file; int /*<<< orphan*/ * name; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {scalar_t__ bl_data; } ;
typedef  int Dwarf_Unsigned ;
typedef  scalar_t__ Dwarf_Signed ;
typedef  scalar_t__ Dwarf_Half ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  int /*<<< orphan*/  Dwarf_Die ;
typedef  int /*<<< orphan*/  Dwarf_Debug ;
typedef  scalar_t__ Dwarf_Bool ;
typedef  TYPE_1__ Dwarf_Block ;
typedef  int /*<<< orphan*/  Dwarf_Attribute ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_artificial ; 
 int /*<<< orphan*/  DW_AT_decl_file ; 
 int /*<<< orphan*/  DW_AT_decl_line ; 
 int /*<<< orphan*/  DW_AT_declaration ; 
 int /*<<< orphan*/  DW_AT_external ; 
 int /*<<< orphan*/  DW_AT_high_pc ; 
 int /*<<< orphan*/  DW_AT_location ; 
 int /*<<< orphan*/  DW_AT_low_pc ; 
 int /*<<< orphan*/  DW_DLA_DIE ; 
 int DW_DLV_ERROR ; 
 int DW_DLV_OK ; 
 scalar_t__ DW_OP_addr ; 
 scalar_t__ DW_TAG_entry_point ; 
 scalar_t__ DW_TAG_inlined_subroutine ; 
 scalar_t__ DW_TAG_subprogram ; 
 scalar_t__ DW_TAG_variable ; 
 int /*<<< orphan*/  FUNC0 (struct var_info_head*,struct var_info_entry*,int /*<<< orphan*/ ) ; 
 struct var_info_entry* FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entries ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct var_info_entry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC17(Dwarf_Debug dbg, struct func_info_head *func_info,
    struct var_info_head *var_info, Dwarf_Die die, char **src_files,
    Dwarf_Signed filecount)
{
	Dwarf_Attribute at;
	Dwarf_Unsigned udata;
	Dwarf_Half tag;
	Dwarf_Block *block;
	Dwarf_Bool flag;
	Dwarf_Die ret_die;
	Dwarf_Error de;
	struct func_info_entry *func;
	struct var_info_entry *var;
	int ret;

	if (FUNC10(die, &tag, &de) != DW_DLV_OK) {
		FUNC16("dwarf_tag failed: %s", FUNC7(de));
		goto cont_search;
	}

	/* We're interested in DIEs which define functions or variables. */
	if (tag != DW_TAG_subprogram && tag != DW_TAG_entry_point &&
	    tag != DW_TAG_inlined_subroutine && tag != DW_TAG_variable)
		goto cont_search;

	if (tag == DW_TAG_variable) {

		/* Ignore "artificial" variable. */
		if (FUNC3(die, DW_AT_artificial, &flag, &de) ==
		    DW_DLV_OK && flag)
			goto cont_search;

		/* Ignore pure declaration. */
		if (FUNC3(die, DW_AT_declaration, &flag, &de) ==
		    DW_DLV_OK && flag)
			goto cont_search;

		/* Ignore stack varaibles. */
		if (FUNC3(die, DW_AT_external, &flag, &de) !=
		    DW_DLV_OK || !flag)
			goto cont_search;

		if ((var = FUNC1(1, sizeof(*var))) == NULL) {
			FUNC15("calloc failed");
			goto cont_search;
		}

		if (FUNC4(die, DW_AT_decl_file, &udata,
		    &de) == DW_DLV_OK && udata > 0 &&
		    (Dwarf_Signed) (udata - 1) < filecount) {
			var->file = FUNC14(src_files[udata - 1]);
			if (var->file == NULL) {
				FUNC15("strdup");
				FUNC12(var);
				goto cont_search;
			}
		}

		if (FUNC4(die, DW_AT_decl_line, &udata, &de) ==
		    DW_DLV_OK)
			var->line = udata;

		var->name = FUNC11(dbg, die);
		if (var->name == NULL) {
			if (var->file)
				FUNC12(var->file);
			FUNC12(var);
			goto cont_search;
		}

		if (FUNC2(die, DW_AT_location, &at, &de) == DW_DLV_OK &&
		    FUNC8(at, &block, &de) == DW_DLV_OK) {
			/*
			 * Since we ignored stack variables, the rest are the
			 * external varaibles which should always use DW_OP_addr
			 * operator for DW_AT_location value.
			 */
			if (*((uint8_t *)block->bl_data) == DW_OP_addr)
				var->addr = FUNC13(dbg, block);
		}

		FUNC0(var_info, var, entries);

	} else {

		if ((func = FUNC1(1, sizeof(*func))) == NULL) {
			FUNC15("calloc failed");
			goto cont_search;
		}

		/*
		 * Note that dwarf_attrval_unsigned() handles DW_AT_abstract_origin
		 * internally, so it can retrieve DW_AT_decl_file/DW_AT_decl_line
		 * attributes for inlined functions as well.
		 */
		if (FUNC4(die, DW_AT_decl_file, &udata,
		    &de) == DW_DLV_OK && udata > 0 &&
		    (Dwarf_Signed) (udata - 1) < filecount) {
			func->file = FUNC14(src_files[udata - 1]);
			if (func->file == NULL) {
				FUNC15("strdup");
				FUNC12(func);
				goto cont_search;
			}
		}

		if (FUNC4(die, DW_AT_decl_line, &udata, &de) ==
		    DW_DLV_OK)
			func->line = udata;

		func->name = FUNC11(dbg, die);
		if (func->name == NULL) {
			if (func->file)
				FUNC12(func->file);
			FUNC12(func);
			goto cont_search;
		}

		if (FUNC4(die, DW_AT_low_pc, &udata, &de) ==
		    DW_DLV_OK)
			func->lowpc = udata;
		if (FUNC4(die, DW_AT_high_pc, &udata, &de) ==
		    DW_DLV_OK)
			func->highpc = udata;

		FUNC0(func_info, func, entries);
	}

cont_search:

	/* Search children. */
	ret = FUNC5(die, &ret_die, &de);
	if (ret == DW_DLV_ERROR)
		FUNC16("dwarf_child: %s", FUNC7(de));
	else if (ret == DW_DLV_OK)
		FUNC17(dbg, func_info, var_info, ret_die, src_files,
		    filecount);

	/* Search sibling. */
	ret = FUNC9(dbg, die, &ret_die, &de);
	if (ret == DW_DLV_ERROR)
		FUNC16("dwarf_siblingof: %s", FUNC7(de));
	else if (ret == DW_DLV_OK)
		FUNC17(dbg, func_info, var_info, ret_die, src_files,
		    filecount);

	FUNC6(dbg, die, DW_DLA_DIE);
}