#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ pr_vaddr; } ;
typedef  TYPE_1__ prmap_t ;
struct TYPE_15__ {char* dtpd_mod; char* dtpd_func; char* dtpd_name; int /*<<< orphan*/ * dtpd_provider; } ;
typedef  TYPE_2__ dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_16__ {int /*<<< orphan*/  dpr_proc; } ;
typedef  TYPE_3__ dt_proc_t ;
struct TYPE_17__ {char* dpp_mod; char* dpp_func; char* dpp_name; int /*<<< orphan*/  dpp_pr; scalar_t__ dpp_last_taken; int /*<<< orphan*/ * dpp_pcb; TYPE_3__* dpp_dpr; int /*<<< orphan*/ * dpp_dtp; } ;
typedef  TYPE_4__ dt_pid_probe_t ;
typedef  int /*<<< orphan*/  dt_pcb_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROC_DYN ; 
 int /*<<< orphan*/  D_PROC_LIB ; 
 int /*<<< orphan*/  D_PROC_NAME ; 
 char* PR_OBJ_LDSO ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dt_pid_mod_filt ; 
 int FUNC4 (TYPE_4__*,TYPE_1__ const*,char*) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(dtrace_probedesc_t *pdp, dtrace_hdl_t *dtp,
    dt_pcb_t *pcb, dt_proc_t *dpr)
{
	dt_pid_probe_t pp;
	int ret = 0;

	pp.dpp_dtp = dtp;
	pp.dpp_dpr = dpr;
	pp.dpp_pr = dpr->dpr_proc;
	pp.dpp_pcb = pcb;

#ifdef DOODAD
	/*
	 * We can only trace dynamically-linked executables (since we've
	 * hidden some magic in ld.so.1 as well as libc.so.1).
	 */
	if (Pname_to_map(pp.dpp_pr, PR_OBJ_LDSO) == NULL) {
		return (dt_pid_error(dtp, pcb, dpr, NULL, D_PROC_DYN,
		    "process %s is not a dynamically-linked executable",
		    &pdp->dtpd_provider[3]));
	}
#endif

	pp.dpp_mod = pdp->dtpd_mod[0] != '\0' ? pdp->dtpd_mod : "*";
	pp.dpp_func = pdp->dtpd_func[0] != '\0' ? pdp->dtpd_func : "*";
	pp.dpp_name = pdp->dtpd_name[0] != '\0' ? pdp->dtpd_name : "*";
	pp.dpp_last_taken = 0;

	if (FUNC6(pp.dpp_func, "-") == 0) {
		const prmap_t *aout, *pmp;

		if (pdp->dtpd_mod[0] == '\0') {
			pp.dpp_mod = pdp->dtpd_mod;
			(void) FUNC7(pdp->dtpd_mod, "a.out");
		} else if (FUNC8(pp.dpp_mod) ||
		    (aout = FUNC0(pp.dpp_pr, "a.out")) == NULL ||
		    (pmp = FUNC0(pp.dpp_pr, pp.dpp_mod)) == NULL ||
		    aout->pr_vaddr != pmp->pr_vaddr) {
			return (FUNC2(dtp, pcb, dpr, NULL, D_PROC_LIB,
			    "only the a.out module is valid with the "
			    "'-' function"));
		}

		if (FUNC8(pp.dpp_name)) {
			return (FUNC2(dtp, pcb, dpr, NULL, D_PROC_NAME,
			    "only individual addresses may be specified "
			    "with the '-' function"));
		}
	}

	/*
	 * If pp.dpp_mod contains any globbing meta-characters, we need
	 * to iterate over each module and compare its name against the
	 * pattern. An empty module name is treated as '*'.
	 */
	if (FUNC8(pp.dpp_mod)) {
		ret = FUNC1(pp.dpp_pr, dt_pid_mod_filt, &pp);
	} else {
		const prmap_t *pmp;
		char *obj;

		/*
		 * If we can't find a matching module, don't sweat it -- either
		 * we'll fail the enabling because the probes don't exist or
		 * we'll wait for that module to come along.
		 */
		if ((pmp = FUNC3(pdp, pp.dpp_pr)) != NULL) {
			if ((obj = FUNC5(pdp->dtpd_mod, '`')) == NULL)
				obj = pdp->dtpd_mod;
			else
				obj++;

			ret = FUNC4(&pp, pmp, obj);
		}
	}

	return (ret);
}