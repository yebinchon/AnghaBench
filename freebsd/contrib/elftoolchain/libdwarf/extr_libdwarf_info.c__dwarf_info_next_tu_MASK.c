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
struct TYPE_4__ {int /*<<< orphan*/ * dbg_tu_current; scalar_t__ dbg_types_loaded; } ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_1__* Dwarf_Debug ;
typedef  int /*<<< orphan*/ * Dwarf_CU ;

/* Variables and functions */
 int DW_DLE_NONE ; 
 int DW_DLE_NO_ENTRY ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cu_next ; 

int
FUNC3(Dwarf_Debug dbg, Dwarf_Error *error)
{
	Dwarf_CU cu;
	int ret;

	FUNC2(dbg->dbg_tu_current != NULL);
	cu = FUNC0(dbg->dbg_tu_current, cu_next);
	if (cu != NULL) {
		dbg->dbg_tu_current = cu;
		return (DW_DLE_NONE);
	}

	if (dbg->dbg_types_loaded) {
		dbg->dbg_tu_current = NULL;
		return (DW_DLE_NO_ENTRY);
	}

	ret = FUNC1(dbg, 0, 0, error);
	if (ret != DW_DLE_NONE)
		return (ret);

	dbg->dbg_tu_current = FUNC0(dbg->dbg_tu_current, cu_next);

	return (DW_DLE_NONE);
}