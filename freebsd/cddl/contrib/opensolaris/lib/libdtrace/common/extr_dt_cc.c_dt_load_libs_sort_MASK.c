#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_prog_t ;
struct TYPE_13__ {int /*<<< orphan*/  dtld_loaded; int /*<<< orphan*/ * dtld_library; } ;
struct TYPE_12__ {scalar_t__ dt_errno; scalar_t__ dt_errtag; int /*<<< orphan*/ * dt_filetag; TYPE_2__ dt_lib_dep_sorted; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  TYPE_2__ dt_lib_depend_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DTRACE_C_EMPTY ; 
 int /*<<< orphan*/  D_PRAGMA_DEPEND ; 
 scalar_t__ EDT_COMPILER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(dtrace_hdl_t *dtp)
{
	dtrace_prog_t *pgp;
	FILE *fp;
	dt_lib_depend_t *dld;

	/*
	 * Finish building the graph containing the library dependencies
	 * and perform a topological sort to generate an ordered list
	 * for compilation.
	 */
	if (FUNC3(dtp) == -1)
		goto err;

	for (dld = FUNC4(&dtp->dt_lib_dep_sorted); dld != NULL;
	    dld = FUNC4(dld)) {

		if ((fp = FUNC10(dld->dtld_library, "r")) == NULL) {
			FUNC0("skipping library %s: %s\n",
			    dld->dtld_library, FUNC11(errno));
			continue;
		}

		dtp->dt_filetag = dld->dtld_library;
		pgp = FUNC8(dtp, fp, DTRACE_C_EMPTY, 0, NULL);
		(void) FUNC9(fp);
		dtp->dt_filetag = NULL;

		if (pgp == NULL && (dtp->dt_errno != EDT_COMPILER ||
		    dtp->dt_errtag != FUNC1(D_PRAGMA_DEPEND)))
			goto err;

		if (pgp == NULL) {
			FUNC0("skipping library %s: %s\n",
			    dld->dtld_library,
			    FUNC6(dtp, FUNC7(dtp)));
		} else {
			dld->dtld_loaded = B_TRUE;
			FUNC5(dtp, pgp);
		}
	}

	FUNC2(dtp);
	return (0);

err:
	FUNC2(dtp);
	return (-1); /* preserve dt_errno */
}