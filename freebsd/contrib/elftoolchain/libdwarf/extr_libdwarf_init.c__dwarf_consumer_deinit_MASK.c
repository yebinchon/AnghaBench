#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ dbg_mode; int /*<<< orphan*/  dbg_section; int /*<<< orphan*/  dbg_types; int /*<<< orphan*/  dbg_vars; int /*<<< orphan*/  dbg_funcs; int /*<<< orphan*/  dbg_weaks; int /*<<< orphan*/  dbg_pubtypes; int /*<<< orphan*/  dbg_globals; } ;
typedef  TYPE_1__* Dwarf_Debug ;

/* Variables and functions */
 scalar_t__ DW_DLC_READ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(Dwarf_Debug dbg)
{

	FUNC7(dbg != NULL && dbg->dbg_mode == DW_DLC_READ);

	FUNC2(dbg);
	FUNC5(dbg);
	FUNC1(dbg);
	FUNC0(dbg);
	FUNC3(dbg);
	FUNC6(dbg);
	FUNC4(&dbg->dbg_globals);
	FUNC4(&dbg->dbg_pubtypes);
	FUNC4(&dbg->dbg_weaks);
	FUNC4(&dbg->dbg_funcs);
	FUNC4(&dbg->dbg_vars);
	FUNC4(&dbg->dbg_types);

	FUNC8(dbg->dbg_section);
}