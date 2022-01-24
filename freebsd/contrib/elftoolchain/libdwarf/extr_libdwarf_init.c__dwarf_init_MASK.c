#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ dbg_mode; int /*<<< orphan*/  dbg_mslist; int /*<<< orphan*/  dbg_aslist; int /*<<< orphan*/  dbg_rllist; int /*<<< orphan*/  dbg_tu; int /*<<< orphan*/  dbg_cu; int /*<<< orphan*/  dbg_errarg; int /*<<< orphan*/  dbg_errhand; } ;
typedef  int /*<<< orphan*/  Dwarf_Unsigned ;
typedef  int /*<<< orphan*/  Dwarf_Ptr ;
typedef  int /*<<< orphan*/  Dwarf_Handler ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_1__* Dwarf_Debug ;

/* Variables and functions */
 scalar_t__ DW_DLC_RDWR ; 
 scalar_t__ DW_DLC_READ ; 
 scalar_t__ DW_DLC_WRITE ; 
 int DW_DLE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC5(Dwarf_Debug dbg, Dwarf_Unsigned pro_flags, Dwarf_Handler errhand,
    Dwarf_Ptr errarg, Dwarf_Error *error)
{
	int ret;

	ret = DW_DLE_NONE;
	
	/*
	 * Set the error handler fields early, so that the application
	 * is notified of initialization errors.
	 */
	dbg->dbg_errhand = errhand;
	dbg->dbg_errarg = errarg;

	FUNC0(&dbg->dbg_cu);
	FUNC0(&dbg->dbg_tu);
	FUNC0(&dbg->dbg_rllist);
	FUNC0(&dbg->dbg_aslist);
	FUNC0(&dbg->dbg_mslist);

	if (dbg->dbg_mode == DW_DLC_READ || dbg->dbg_mode == DW_DLC_RDWR) {
		ret = FUNC1(dbg, error);
		if (ret != DW_DLE_NONE) {
			FUNC2(dbg);
			return (ret);
		}
	}

	if (dbg->dbg_mode == DW_DLC_WRITE) {
		ret = FUNC3(dbg, pro_flags, error);
		if (ret != DW_DLE_NONE) {
			FUNC2(dbg);
			return (ret);
		}
	}

	/*
	 * Initialise internal string table.
	 */
	if ((ret = FUNC4(dbg, error)) != DW_DLE_NONE)
		return (ret);

	return (DW_DLE_NONE);
}