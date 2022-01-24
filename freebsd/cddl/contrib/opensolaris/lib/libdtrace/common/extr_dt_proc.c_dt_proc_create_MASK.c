#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct ps_prochandle {int dummy; } ;
typedef  int /*<<< orphan*/  proc_child_func ;
struct TYPE_14__ {int /*<<< orphan*/  dt_prcmode; int /*<<< orphan*/  dt_proc_env; TYPE_3__* dt_procs; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_15__ {int dpr_pid; struct ps_prochandle* dpr_proc; int /*<<< orphan*/  dpr_refs; struct TYPE_15__* dpr_hash; TYPE_1__* dpr_hdl; int /*<<< orphan*/  dpr_cv; int /*<<< orphan*/  dpr_lock; } ;
typedef  TYPE_2__ dt_proc_t ;
struct TYPE_16__ {int dph_hashlen; int /*<<< orphan*/  dph_lrulist; TYPE_2__** dph_hash; } ;
typedef  TYPE_3__ dt_proc_hash_t ;
struct TYPE_13__ {int pr_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PR_KLC ; 
 int /*<<< orphan*/  PR_RLC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ps_prochandle*,int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC2 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC3 (struct ps_prochandle*,int /*<<< orphan*/ ) ; 
 struct ps_prochandle* FUNC4 (char const*,char* const*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct ps_prochandle* FUNC8 (TYPE_1__*,TYPE_2__*,char*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (char const*,char* const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,struct ps_prochandle**) ; 
 int FUNC11 (struct ps_prochandle*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct ps_prochandle *
FUNC14(dtrace_hdl_t *dtp, const char *file, char *const *argv,
    proc_child_func *pcf, void *child_arg)
{
	dt_proc_hash_t *dph = dtp->dt_procs;
	dt_proc_t *dpr;
	int err;

	if ((dpr = FUNC9(dtp, sizeof (dt_proc_t))) == NULL)
		return (NULL); /* errno is set for us */

	(void) FUNC13(&dpr->dpr_lock, NULL);
	(void) FUNC12(&dpr->dpr_cv, NULL);

#ifdef illumos
	dpr->dpr_proc = Pxcreate(file, argv, dtp->dt_proc_env, &err, NULL, 0);
	if (dpr->dpr_proc == NULL) {
		return (dt_proc_error(dtp, dpr,
		    "failed to execute %s: %s\n", file, Pcreate_error(err)));
	}
#else
	if ((err = FUNC10(file, argv, dtp->dt_proc_env, pcf, child_arg,
	    &dpr->dpr_proc)) != 0) {
		return (FUNC8(dtp, dpr,
		    "failed to execute %s: %s\n", file, FUNC0(err)));
	}
#endif

	dpr->dpr_hdl = dtp;
#ifdef illumos
	dpr->dpr_pid = Pstatus(dpr->dpr_proc)->pr_pid;
#else
	dpr->dpr_pid = FUNC11(dpr->dpr_proc);
#endif

	(void) FUNC3(dpr->dpr_proc, PR_RLC);
	(void) FUNC1(dpr->dpr_proc, PR_KLC);

	if (FUNC7(dtp, dpr, dtp->dt_prcmode) != 0)
		return (NULL); /* dt_proc_error() has been called for us */

	dpr->dpr_hash = dph->dph_hash[dpr->dpr_pid & (dph->dph_hashlen - 1)];
	dph->dph_hash[dpr->dpr_pid & (dph->dph_hashlen - 1)] = dpr;
	FUNC6(&dph->dph_lrulist, dpr);

	FUNC5("created pid %d\n", (int)dpr->dpr_pid);
	dpr->dpr_refs++;

	return (dpr->dpr_proc);
}