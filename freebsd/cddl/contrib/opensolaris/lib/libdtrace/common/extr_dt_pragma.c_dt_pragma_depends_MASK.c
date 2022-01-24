#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lib ;
struct TYPE_19__ {char* dt_filetag; int /*<<< orphan*/  dt_lib_dep_sorted; int /*<<< orphan*/  dt_lib_dep; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_20__ {scalar_t__ dn_kind; char* dn_string; struct TYPE_20__* dn_list; } ;
typedef  TYPE_2__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_module_t ;
struct TYPE_21__ {int /*<<< orphan*/  dtld_loaded; int /*<<< orphan*/  dtld_dependencies; } ;
typedef  TYPE_3__ dt_lib_depend_t ;
struct TYPE_22__ {int /*<<< orphan*/ * dkm_module; } ;
typedef  TYPE_4__ dt_kmodule_t ;
struct TYPE_23__ {int pcb_cflags; TYPE_1__* pcb_hdl; } ;

/* Variables and functions */
 int B_FALSE ; 
 int B_TRUE ; 
 int DTRACE_C_CTL ; 
 scalar_t__ DT_NODE_IDENT ; 
 int /*<<< orphan*/  D_PRAGMA_DEPEND ; 
 int /*<<< orphan*/  D_PRAGMA_INVAL ; 
 int /*<<< orphan*/  D_PRAGMA_MALFORM ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 TYPE_4__* FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,char*) ; 
 char const* FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 char* FUNC13 (char**,char*) ; 
 scalar_t__ FUNC14 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_5__* yypcb ; 

__attribute__((used)) static void
FUNC16(const char *prname, dt_node_t *cnp)
{
	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	dt_node_t *nnp = cnp ? cnp->dn_list : NULL;
	int found;
	dt_lib_depend_t *dld;
	char lib[MAXPATHLEN];
	size_t plen;
	char *provs, *cpy, *tok;

	if (cnp == NULL || nnp == NULL ||
	    cnp->dn_kind != DT_NODE_IDENT || nnp->dn_kind != DT_NODE_IDENT) {
		FUNC15(D_PRAGMA_MALFORM, "malformed #pragma %s "
		    "<class> <name>\n", prname);
	}

	if (FUNC12(cnp->dn_string, "provider") == 0) {
		/*
		 * First try to get the provider list using the
		 * debug.dtrace.providers sysctl, since that'll work even if
		 * we're not running as root.
		 */
		provs = NULL;
		if (FUNC14("debug.dtrace.providers", NULL, &plen, NULL, 0) ||
		    ((provs = FUNC1(dtp, plen)) == NULL) ||
		    FUNC14("debug.dtrace.providers", provs, &plen, NULL, 0))
			found = FUNC9(dtp, nnp->dn_string) != NULL;
		else {
			found = B_FALSE;
			for (cpy = provs; (tok = FUNC13(&cpy, " ")) != NULL; )
				if (FUNC12(tok, nnp->dn_string) == 0) {
					found = B_TRUE;
					break;
				}
			if (found == B_FALSE)
				found = FUNC9(dtp,
				    nnp->dn_string) != NULL;
		}
		if (provs != NULL)
			FUNC2(dtp, provs);
	} else if (FUNC12(cnp->dn_string, "module") == 0) {
		dt_module_t *mp = FUNC7(dtp, nnp->dn_string);
		found = mp != NULL && FUNC6(dtp, mp) != NULL;
#ifdef __FreeBSD__
		if (!found) {
			dt_kmodule_t *dkmp = dt_kmodule_lookup(dtp,
			    nnp->dn_string);
			found = dkmp != NULL &&
			    dt_module_getctf(dtp, dkmp->dkm_module) != NULL;
		}
#endif
	} else if (FUNC12(cnp->dn_string, "library") == 0) {
		if (yypcb->pcb_cflags & DTRACE_C_CTL) {
			FUNC0(dtp->dt_filetag != NULL);

			FUNC8(dtp, nnp->dn_string, lib,
			    sizeof (lib));

			dld = FUNC5(&dtp->dt_lib_dep,
			    dtp->dt_filetag);
			FUNC0(dld != NULL);

			if ((FUNC4(dtp, &dld->dtld_dependencies,
			    lib)) != 0) {
				FUNC15(D_PRAGMA_DEPEND,
				    "failed to add dependency %s:%s\n", lib,
				    FUNC10(dtp, FUNC11(dtp)));
			}
		} else {
			/*
			 * By this point we have already performed a topological
			 * sort of the dependencies; we process this directive
			 * as satisfied as long as the dependency was properly
			 * loaded.
			 */
			if (dtp->dt_filetag == NULL)
				FUNC15(D_PRAGMA_DEPEND, "main program may "
				    "not explicitly depend on a library");

			dld = FUNC5(&dtp->dt_lib_dep,
			    dtp->dt_filetag);
			FUNC0(dld != NULL);

			FUNC8(dtp, nnp->dn_string, lib,
			    sizeof (lib));
			dld = FUNC5(&dtp->dt_lib_dep_sorted,
			    lib);
			FUNC0(dld != NULL);

			if (!dld->dtld_loaded)
				FUNC15(D_PRAGMA_DEPEND, "program requires "
				    "library \"%s\" which failed to load",
				    lib);
		}

		found = B_TRUE;
	} else {
		FUNC15(D_PRAGMA_INVAL, "invalid class %s "
		    "specified by #pragma %s\n", cnp->dn_string, prname);
	}

	if (!found) {
		FUNC15(D_PRAGMA_DEPEND, "program requires %s %s\n",
		    cnp->dn_string, nnp->dn_string);
	}
}