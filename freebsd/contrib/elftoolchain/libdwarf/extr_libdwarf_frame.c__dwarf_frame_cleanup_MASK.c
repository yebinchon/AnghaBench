#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ dbg_mode; int /*<<< orphan*/ * dbg_eh_frame; int /*<<< orphan*/ * dbg_frame; TYPE_1__* dbg_internal_reg_table; } ;
struct TYPE_5__ {struct TYPE_5__* rt3_rules; } ;
typedef  TYPE_1__ Dwarf_Regtable3 ;
typedef  TYPE_2__* Dwarf_Debug ;

/* Variables and functions */
 scalar_t__ DW_DLC_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(Dwarf_Debug dbg)
{
	Dwarf_Regtable3 *rt;

	FUNC1(dbg != NULL && dbg->dbg_mode == DW_DLC_READ);

	if (dbg->dbg_internal_reg_table) {
		rt = dbg->dbg_internal_reg_table;
		FUNC2(rt->rt3_rules);
		FUNC2(rt);
		dbg->dbg_internal_reg_table = NULL;
	}

	if (dbg->dbg_frame) {
		FUNC0(dbg->dbg_frame);
		dbg->dbg_frame = NULL;
	}

	if (dbg->dbg_eh_frame) {
		FUNC0(dbg->dbg_eh_frame);
		dbg->dbg_eh_frame = NULL;
	}
}