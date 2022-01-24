#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ dbp_active; int /*<<< orphan*/  dbp_instr; int /*<<< orphan*/  dbp_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dpr_proc; TYPE_2__ dpr_bps; int /*<<< orphan*/  dpr_lock; } ;
typedef  TYPE_1__ dt_proc_t ;
typedef  TYPE_2__ dt_bkpt_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC5(dt_proc_t *dpr)
{
	dt_bkpt_t *dbp;

	FUNC2(FUNC0(&dpr->dpr_lock));

	for (dbp = FUNC4(&dpr->dpr_bps);
	    dbp != NULL; dbp = FUNC4(dbp)) {
		if (dbp->dbp_active && FUNC1(dpr->dpr_proc,
		    dbp->dbp_addr, dbp->dbp_instr) == 0)
			dbp->dbp_active = B_FALSE;
	}

	FUNC3("breakpoints disabled\n");
}