#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ps_prochandle {int dummy; } ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_3__ {int dpr_stop; int /*<<< orphan*/  dpr_lock; int /*<<< orphan*/  dpr_cv; } ;
typedef  TYPE_1__ dt_proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int DT_PROC_STOP_IDLE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,struct ps_prochandle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(dtrace_hdl_t *dtp, struct ps_prochandle *P)
{
	dt_proc_t *dpr = FUNC0(dtp, P, B_FALSE);

	(void) FUNC2(&dpr->dpr_lock);

	if (dpr->dpr_stop & DT_PROC_STOP_IDLE) {
		dpr->dpr_stop &= ~DT_PROC_STOP_IDLE;
		(void) FUNC1(&dpr->dpr_cv);
	}

	(void) FUNC3(&dpr->dpr_lock);
}