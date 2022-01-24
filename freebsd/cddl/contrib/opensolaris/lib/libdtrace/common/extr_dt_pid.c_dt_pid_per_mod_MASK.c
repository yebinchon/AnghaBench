#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_11__ {int /*<<< orphan*/  pr_vaddr; } ;
typedef  TYPE_1__ prmap_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_proc_t ;
struct TYPE_12__ {char const* dpp_obj; char* dpp_func; char* dpp_mod; scalar_t__ dpp_nmatches; int /*<<< orphan*/  dpp_pr; int /*<<< orphan*/  dpp_lmid; scalar_t__* dpp_stret; int /*<<< orphan*/ * dpp_dpr; int /*<<< orphan*/ * dpp_pcb; int /*<<< orphan*/ * dpp_dtp; } ;
typedef  TYPE_2__ dt_pid_probe_t ;
typedef  int /*<<< orphan*/  dt_pcb_t ;
struct TYPE_14__ {scalar_t__ pr_dmodel; } ;
struct TYPE_13__ {unsigned int st_size; scalar_t__ st_shndx; scalar_t__ st_value; int /*<<< orphan*/  st_info; scalar_t__ st_other; scalar_t__ st_name; } ;
typedef  TYPE_3__ GElf_Sym ;
typedef  unsigned int Elf64_Xword ;

/* Variables and functions */
 int BIND_ANY ; 
 int /*<<< orphan*/  DTRACE_FUNCNAMELEN ; 
 int /*<<< orphan*/  D_PROC_FUNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PR_DYNSYM ; 
 scalar_t__ PR_MODEL_ILP32 ; 
 int /*<<< orphan*/  PR_SYMTAB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_9__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ SHN_UNDEF ; 
 int /*<<< orphan*/  STB_LOCAL ; 
 scalar_t__ STT_FUNC ; 
 int TYPE_FUNC ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC10 (TYPE_2__*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  dt_pid_sym_filt ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char const* FUNC13 (char const*,char) ; 

__attribute__((used)) static int
FUNC14(void *arg, const prmap_t *pmp, const char *obj)
{
	dt_pid_probe_t *pp = arg;
	dtrace_hdl_t *dtp = pp->dpp_dtp;
	dt_pcb_t *pcb = pp->dpp_pcb;
	dt_proc_t *dpr = pp->dpp_dpr;
	GElf_Sym sym;

	if (obj == NULL)
		return (0);

#ifdef illumos
	(void) Plmid(pp->dpp_pr, pmp->pr_vaddr, &pp->dpp_lmid);
#endif
	

	if ((pp->dpp_obj = FUNC13(obj, '/')) == NULL)
		pp->dpp_obj = obj;
	else
		pp->dpp_obj++;
#ifdef illumos
	if (Pxlookup_by_name(pp->dpp_pr, pp->dpp_lmid, obj, ".stret1", &sym,
	    NULL) == 0)
		pp->dpp_stret[0] = sym.st_value;
	else
		pp->dpp_stret[0] = 0;

	if (Pxlookup_by_name(pp->dpp_pr, pp->dpp_lmid, obj, ".stret2", &sym,
	    NULL) == 0)
		pp->dpp_stret[1] = sym.st_value;
	else
		pp->dpp_stret[1] = 0;

	if (Pxlookup_by_name(pp->dpp_pr, pp->dpp_lmid, obj, ".stret4", &sym,
	    NULL) == 0)
		pp->dpp_stret[2] = sym.st_value;
	else
		pp->dpp_stret[2] = 0;

	if (Pxlookup_by_name(pp->dpp_pr, pp->dpp_lmid, obj, ".stret8", &sym,
	    NULL) == 0)
		pp->dpp_stret[3] = sym.st_value;
	else
		pp->dpp_stret[3] = 0;
#else
	pp->dpp_stret[0] = 0;
	pp->dpp_stret[1] = 0;
	pp->dpp_stret[2] = 0;
	pp->dpp_stret[3] = 0;
#endif

	FUNC8("%s stret %llx %llx %llx %llx\n", obj,
	    (u_longlong_t)pp->dpp_stret[0], (u_longlong_t)pp->dpp_stret[1],
	    (u_longlong_t)pp->dpp_stret[2], (u_longlong_t)pp->dpp_stret[3]);

	/*
	 * If pp->dpp_func contains any globbing meta-characters, we need
	 * to iterate over the symbol table and compare each function name
	 * against the pattern.
	 */
	if (!FUNC12(pp->dpp_func)) {
		/*
		 * If we fail to lookup the symbol, try interpreting the
		 * function as the special "-" function that indicates that the
		 * probe name should be interpreted as a absolute virtual
		 * address. If that fails and we were matching a specific
		 * function in a specific module, report the error, otherwise
		 * just fail silently in the hopes that some other object will
		 * contain the desired symbol.
		 */
		if (FUNC7(pp->dpp_pr, pp->dpp_lmid, obj,
		    pp->dpp_func, &sym, NULL) != 0) {
			if (FUNC11("-", pp->dpp_func) == 0) {
				sym.st_name = 0;
				sym.st_info =
				    FUNC0(STB_LOCAL, STT_FUNC);
				sym.st_other = 0;
				sym.st_value = 0;
#ifdef illumos
				sym.st_size = Pstatus(pp->dpp_pr)->pr_dmodel ==
				    PR_MODEL_ILP32 ? -1U : -1ULL;
#else
				sym.st_size = ~((Elf64_Xword) 0);
#endif

			} else if (!FUNC12(pp->dpp_mod)) {
				return (FUNC9(dtp, pcb, dpr, NULL,
				    D_PROC_FUNC,
				    "failed to lookup '%s' in module '%s'",
				    pp->dpp_func, pp->dpp_mod));
			} else {
				return (0);
			}
		}

		/*
		 * Only match defined functions of non-zero size.
		 */
		if (FUNC1(sym.st_info) != STT_FUNC ||
		    sym.st_shndx == SHN_UNDEF || sym.st_size == 0)
			return (0);

		/*
		 * We don't instrument PLTs -- they're dynamically rewritten,
		 * and, so, inherently dicey to instrument.
		 */
#ifdef DOODAD
		if (Ppltdest(pp->dpp_pr, sym.st_value) != NULL)
			return (0);
#endif

		(void) FUNC3(pp->dpp_pr, sym.st_value, pp->dpp_func,
		    DTRACE_FUNCNAMELEN, &sym);

		return (FUNC10(pp, &sym, pp->dpp_func));
	} else {
		uint_t nmatches = pp->dpp_nmatches;

		if (FUNC6(pp->dpp_pr, obj, PR_SYMTAB,
		    BIND_ANY | TYPE_FUNC, dt_pid_sym_filt, pp) == 1)
			return (1);

		if (nmatches == pp->dpp_nmatches) {
			/*
			 * If we didn't match anything in the PR_SYMTAB, try
			 * the PR_DYNSYM.
			 */
			if (FUNC6(pp->dpp_pr, obj, PR_DYNSYM,
			    BIND_ANY | TYPE_FUNC, dt_pid_sym_filt, pp) == 1)
				return (1);
		}
	}

	return (0);
}