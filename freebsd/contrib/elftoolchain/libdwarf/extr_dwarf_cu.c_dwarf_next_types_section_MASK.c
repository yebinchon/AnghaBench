#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * dbg_types_sec; int /*<<< orphan*/ * dbg_tu_current; scalar_t__ dbg_types_off; scalar_t__ dbg_types_loaded; } ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_1__* Dwarf_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DW_DLE_NO_ENTRY ; 
 int DW_DLV_NO_ENTRY ; 
 int DW_DLV_OK ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(Dwarf_Debug dbg, Dwarf_Error *error)
{

	/* Free resource allocated for current .debug_types section. */
	FUNC2(dbg);
	dbg->dbg_types_loaded = 0;
	dbg->dbg_types_off = 0;

	/* Reset type unit pointer. */
	dbg->dbg_tu_current = NULL;

	/* Search for the next .debug_types section. */
	dbg->dbg_types_sec = FUNC1(dbg,
	    dbg->dbg_types_sec);

	if (dbg->dbg_types_sec == NULL) {
		FUNC0(dbg, error, DW_DLE_NO_ENTRY);
		return (DW_DLV_NO_ENTRY);
	}

	return (DW_DLV_OK);
}