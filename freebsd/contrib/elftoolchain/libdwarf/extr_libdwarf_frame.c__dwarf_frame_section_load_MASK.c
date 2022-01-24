#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dbg_frame; } ;
typedef  int /*<<< orphan*/  Dwarf_Section ;
typedef  int /*<<< orphan*/  Dwarf_Error ;
typedef  TYPE_1__* Dwarf_Debug ;

/* Variables and functions */
 int DW_DLE_NONE ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC2(Dwarf_Debug dbg, Dwarf_Error *error)
{
	Dwarf_Section *ds;

	if ((ds = FUNC0(dbg, ".debug_frame")) != NULL) {
		return (FUNC1(dbg, &dbg->dbg_frame,
		    ds, 0, error));
	}

	return (DW_DLE_NONE);
}