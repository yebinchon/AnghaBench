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
struct TYPE_4__ {int /*<<< orphan*/  dbg_tu; int /*<<< orphan*/ * dbg_tu_current; scalar_t__ dbg_types_off; scalar_t__ dbg_types_loaded; } ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_1__* Dwarf_Debug ;
typedef  int /*<<< orphan*/ * Dwarf_CU ;

/* Variables and functions */
 int DW_DLE_NONE ; 
 int DW_DLE_NO_ENTRY ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(Dwarf_Debug dbg, Dwarf_Error *error)
{
	Dwarf_CU tu;
	int ret;

	FUNC2(dbg->dbg_tu_current == NULL);
	tu = FUNC0(&dbg->dbg_tu);
	if (tu != NULL) {
		dbg->dbg_tu_current = tu;
		return (DW_DLE_NONE);
	}

	if (dbg->dbg_types_loaded)
		return (DW_DLE_NO_ENTRY);

	dbg->dbg_types_off = 0;
	ret = FUNC1(dbg, 0, 0, error);
	if (ret != DW_DLE_NONE)
		return (ret);

	dbg->dbg_tu_current = FUNC0(&dbg->dbg_tu);

	return (DW_DLE_NONE);
}