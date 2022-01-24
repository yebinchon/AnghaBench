#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  dbgp_drslist; void* dbgp_drspos; int /*<<< orphan*/  dbgp_seclist; void* dbgp_secpos; int /*<<< orphan*/  dbgp_vars; int /*<<< orphan*/  dbgp_types; int /*<<< orphan*/  dbgp_funcs; int /*<<< orphan*/  dbgp_weaks; int /*<<< orphan*/  dbgp_pubs; } ;
typedef  TYPE_1__* Dwarf_P_Debug ;
typedef  int /*<<< orphan*/  Dwarf_Error ;

/* Variables and functions */
 int DW_DLE_NONE ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC10(Dwarf_P_Debug dbg, Dwarf_Error *error)
{
	int ret;

	/* Produce .debug_info section. */
	if ((ret = FUNC4(dbg, error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_abbrev section. */
	if ((ret = FUNC1(dbg, error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_line section. */
	if ((ret = FUNC5(dbg, error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_frame section. */
	if ((ret = FUNC3(dbg, error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_aranges section. */
	if ((ret = FUNC2(dbg, error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_macinfo section. */
	if ((ret = FUNC6(dbg, error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_pubnames section. */
	if ((ret = FUNC7(dbg, ".debug_pubnames", dbg->dbgp_pubs,
	    error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_weaknames section. */
	if ((ret = FUNC7(dbg, ".debug_weaknames", dbg->dbgp_weaks,
	    error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_funcnames section. */
	if ((ret = FUNC7(dbg, ".debug_funcnames", dbg->dbgp_funcs,
	    error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_typenames section. */
	if ((ret = FUNC7(dbg, ".debug_typenames", dbg->dbgp_types,
	    error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_varnames section. */
	if ((ret = FUNC7(dbg, ".debug_varnames", dbg->dbgp_vars,
	    error)) != DW_DLE_NONE)
		return (ret);

	/* Produce .debug_str section. */
	if ((ret = FUNC9(dbg, error)) != DW_DLE_NONE)
		return (ret);

	/* Finally, update and generate all relocation sections. */
	if ((ret = FUNC8(dbg, error)) != DW_DLE_NONE)
		return (ret);

	/* Set section/relocation iterator to the first element. */
	dbg->dbgp_secpos = FUNC0(&dbg->dbgp_seclist);
	dbg->dbgp_drspos = FUNC0(&dbg->dbgp_drslist);
	
	return (DW_DLE_NONE);
}