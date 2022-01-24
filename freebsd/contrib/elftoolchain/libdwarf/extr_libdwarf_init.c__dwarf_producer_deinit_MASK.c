#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ dbg_mode; int /*<<< orphan*/  dbgp_vars; int /*<<< orphan*/  dbgp_types; int /*<<< orphan*/  dbgp_funcs; int /*<<< orphan*/  dbgp_weaks; int /*<<< orphan*/  dbgp_pubs; } ;
typedef  TYPE_1__* Dwarf_P_Debug ;

/* Variables and functions */
 scalar_t__ DW_DLC_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12(Dwarf_P_Debug dbg)
{

	FUNC11(dbg != NULL && dbg->dbg_mode == DW_DLC_WRITE);

	FUNC4(dbg);
	FUNC1(dbg);
	FUNC2(dbg);
	FUNC5(dbg);
	FUNC3(dbg);
	FUNC0(dbg);
	FUNC6(dbg);
	FUNC10(dbg);
	FUNC7(&dbg->dbgp_pubs);
	FUNC7(&dbg->dbgp_weaks);
	FUNC7(&dbg->dbgp_funcs);
	FUNC7(&dbg->dbgp_types);
	FUNC7(&dbg->dbgp_vars);
	FUNC9(dbg);
	FUNC8(dbg);
}