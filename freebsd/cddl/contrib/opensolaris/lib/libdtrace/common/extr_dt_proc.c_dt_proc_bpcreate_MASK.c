#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ps_prochandle {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dpr_bps; int /*<<< orphan*/  dpr_hdl; int /*<<< orphan*/  dpr_lock; struct ps_prochandle* dpr_proc; } ;
typedef  TYPE_1__ dt_proc_t ;
struct TYPE_8__ {uintptr_t dbp_addr; int /*<<< orphan*/  dbp_active; int /*<<< orphan*/  dbp_instr; void* dbp_data; int /*<<< orphan*/ * dbp_func; } ;
typedef  TYPE_2__ dt_bkpt_t ;
typedef  int /*<<< orphan*/  dt_bkpt_f ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ps_prochandle*,uintptr_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static dt_bkpt_t *
FUNC5(dt_proc_t *dpr, uintptr_t addr, dt_bkpt_f *func, void *data)
{
	struct ps_prochandle *P = dpr->dpr_proc;
	dt_bkpt_t *dbp;

	FUNC2(FUNC0(&dpr->dpr_lock));

	if ((dbp = FUNC4(dpr->dpr_hdl, sizeof (dt_bkpt_t))) != NULL) {
		dbp->dbp_func = func;
		dbp->dbp_data = data;
		dbp->dbp_addr = addr;

		if (FUNC1(P, dbp->dbp_addr, &dbp->dbp_instr) == 0)
			dbp->dbp_active = B_TRUE;

		FUNC3(&dpr->dpr_bps, dbp);
	}

	return (dbp);
}