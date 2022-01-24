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
struct TYPE_3__ {int /*<<< orphan*/  dpr_lock; } ;
typedef  TYPE_1__ dt_proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,struct ps_prochandle*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(dtrace_hdl_t *dtp, struct ps_prochandle *P)
{
	dt_proc_t *dpr = FUNC1(dtp, P, B_FALSE);
	int err = FUNC2(&dpr->dpr_lock);
	FUNC0(err == 0); /* check for unheld lock */
}