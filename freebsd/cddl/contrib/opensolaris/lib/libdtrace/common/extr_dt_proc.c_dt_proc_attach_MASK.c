#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rd_err_e ;
struct TYPE_11__ {scalar_t__ pr_errno; } ;
struct TYPE_12__ {TYPE_1__ pr_lwp; } ;
typedef  TYPE_2__ pstatus_t ;
struct TYPE_13__ {scalar_t__ dpr_pid; int /*<<< orphan*/  dpr_proc; int /*<<< orphan*/ * dpr_rtld; int /*<<< orphan*/  dpr_lock; } ;
typedef  TYPE_3__ dt_proc_t ;
typedef  int /*<<< orphan*/  dt_bkpt_f ;
struct TYPE_14__ {scalar_t__ st_value; } ;
typedef  TYPE_4__ GElf_Sym ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LM_ID_BASE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RD_DLACTIVITY ; 
 int /*<<< orphan*/  RD_OK ; 
 int /*<<< orphan*/  RD_POSTINIT ; 
 int /*<<< orphan*/  RD_PREINIT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,uintptr_t,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ dt_proc_bpmain ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(dt_proc_t *dpr, int exec)
{
#ifdef illumos
	const pstatus_t *psp = Pstatus(dpr->dpr_proc);
#endif
	rd_err_e err;
	GElf_Sym sym;

	FUNC6(FUNC0(&dpr->dpr_lock));

	if (exec) {
#ifdef illumos
		if (psp->pr_lwp.pr_errno != 0)
			return; /* exec failed: nothing needs to be done */
#endif

		FUNC9(dpr, B_FALSE);
#ifdef illumos
		Preset_maps(dpr->dpr_proc);
#endif
	}
	if ((dpr->dpr_rtld = FUNC1(dpr->dpr_proc)) != NULL &&
	    (err = FUNC12(dpr->dpr_rtld, B_TRUE)) == RD_OK) {
#ifdef illumos
		dt_proc_rdwatch(dpr, RD_PREINIT, "RD_PREINIT");
#endif
		FUNC10(dpr, RD_POSTINIT, "RD_POSTINIT");
#ifdef illumos
		dt_proc_rdwatch(dpr, RD_DLACTIVITY, "RD_DLACTIVITY");
#endif
	} else {
		FUNC7("pid %d: failed to enable rtld events: %s\n",
		    (int)dpr->dpr_pid, dpr->dpr_rtld ? FUNC11(err) :
		    "rtld_db agent initialization failed");
	}

	FUNC4(dpr->dpr_proc);

	if (FUNC5(dpr->dpr_proc, LM_ID_BASE,
	    "a.out", "main", &sym, NULL) == 0) {
		(void) FUNC8(dpr, (uintptr_t)sym.st_value,
		    (dt_bkpt_f *)dt_proc_bpmain, "a.out`main");
	} else {
		FUNC7("pid %d: failed to find a.out`main: %s\n",
		    (int)dpr->dpr_pid, FUNC13(errno));
	}
}