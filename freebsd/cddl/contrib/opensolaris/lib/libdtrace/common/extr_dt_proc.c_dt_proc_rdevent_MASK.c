#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  state; } ;
struct TYPE_14__ {int type; TYPE_1__ u; } ;
typedef  TYPE_2__ rd_event_msg_t ;
typedef  int /*<<< orphan*/  rd_err_e ;
struct TYPE_15__ {int /*<<< orphan*/  dt_procs; } ;
typedef  TYPE_3__ dtrace_hdl_t ;
struct TYPE_16__ {int /*<<< orphan*/  dpr_proc; int /*<<< orphan*/  dpr_errmsg; scalar_t__ dpr_pid; int /*<<< orphan*/  dpr_rtld; } ;
typedef  TYPE_4__ dt_proc_t ;

/* Variables and functions */
 int /*<<< orphan*/  DT_PROC_STOP_POSTINIT ; 
 int /*<<< orphan*/  DT_PROC_STOP_PREINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RD_CONSISTENT ; 
#define  RD_DLACTIVITY 130 
 int /*<<< orphan*/  RD_OK ; 
#define  RD_POSTINIT 129 
#define  RD_PREINIT 128 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(dtrace_hdl_t *dtp, dt_proc_t *dpr, const char *evname)
{
	rd_event_msg_t rdm;
	rd_err_e err;

	if ((err = FUNC6(dpr->dpr_rtld, &rdm)) != RD_OK) {
		FUNC1("pid %d: failed to get %s event message: %s\n",
		    (int)dpr->dpr_pid, evname, FUNC5(err));
		return;
	}

	FUNC1("pid %d: rtld event %s type=%d state %d\n",
	    (int)dpr->dpr_pid, evname, rdm.type, rdm.u.state);

	switch (rdm.type) {
	case RD_DLACTIVITY:
		if (rdm.u.state != RD_CONSISTENT)
			break;

		FUNC0(dpr->dpr_proc);
		if (FUNC2(dtp, dpr) != 0)
			FUNC3(dtp, dtp->dt_procs, dpr,
			    dpr->dpr_errmsg);

		break;
	case RD_PREINIT:
		FUNC0(dpr->dpr_proc);
		FUNC4(dpr, DT_PROC_STOP_PREINIT);
		break;
	case RD_POSTINIT:
		FUNC0(dpr->dpr_proc);
		FUNC4(dpr, DT_PROC_STOP_POSTINIT);
		break;
	}
}