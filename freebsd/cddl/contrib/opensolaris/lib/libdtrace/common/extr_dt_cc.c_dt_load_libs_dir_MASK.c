#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  fname ;
struct TYPE_12__ {char* dtld_library; } ;
struct TYPE_11__ {char* dt_filetag; scalar_t__ dt_errno; scalar_t__ dt_errtag; TYPE_2__ dt_lib_dep; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  TYPE_2__ dt_lib_depend_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int DTRACE_C_CTL ; 
 int DTRACE_C_EMPTY ; 
 int /*<<< orphan*/  DTRACE_PROBESPEC_NAME ; 
 int /*<<< orphan*/  DT_CTX_DPROG ; 
 int /*<<< orphan*/  D_PRAGMA_DEPEND ; 
 scalar_t__ EDT_COMPILER ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_2__*,char*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 char* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC11 (char const*) ; 
 struct dirent* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 char* FUNC16 (char*,char) ; 

__attribute__((used)) static int
FUNC17(dtrace_hdl_t *dtp, const char *path)
{
	struct dirent *dp;
	const char *p, *end;
	DIR *dirp;

	char fname[PATH_MAX];
	FILE *fp;
	void *rv;
	dt_lib_depend_t *dld;

	if ((dirp = FUNC11(path)) == NULL) {
		FUNC3("skipping lib dir %s: %s\n", path, FUNC15(errno));
		return (0);
	}

	/* First, parse each file for library dependencies. */
	while ((dp = FUNC12(dirp)) != NULL) {
		if ((p = FUNC16(dp->d_name, '.')) == NULL || FUNC14(p, ".d"))
			continue; /* skip any filename not ending in .d */

		(void) FUNC13(fname, sizeof (fname),
		    "%s/%s", path, dp->d_name);

		if ((fp = FUNC10(fname, "r")) == NULL) {
			FUNC3("skipping library %s: %s\n",
			    fname, FUNC15(errno));
			continue;
		}

		/*
		 * Skip files whose name match an already processed library
		 */
		for (dld = FUNC6(&dtp->dt_lib_dep); dld != NULL;
		    dld = FUNC6(dld)) {
			end = FUNC16(dld->dtld_library, '/');
			/* dt_lib_depend_add ensures this */
			FUNC0(end != NULL);
			if (FUNC14(end + 1, dp->d_name) == 0)
				break;
		}

		if (dld != NULL) {
			FUNC3("skipping library %s, already processed "
			    "library with the same name: %s", dp->d_name,
			    dld->dtld_library);
			(void) FUNC9(fp);
			continue;
		}

		dtp->dt_filetag = fname;
		if (FUNC5(dtp, &dtp->dt_lib_dep, fname) != 0) {
			(void) FUNC9(fp);
			return (-1); /* preserve dt_errno */
		}

		rv = FUNC2(dtp, DT_CTX_DPROG,
		    DTRACE_PROBESPEC_NAME, NULL,
		    DTRACE_C_EMPTY | DTRACE_C_CTL, 0, NULL, fp, NULL);

		if (rv != NULL && dtp->dt_errno &&
		    (dtp->dt_errno != EDT_COMPILER ||
		    dtp->dt_errtag != FUNC4(D_PRAGMA_DEPEND))) {
			(void) FUNC9(fp);
			return (-1); /* preserve dt_errno */
		}

		if (dtp->dt_errno)
			FUNC3("error parsing library %s: %s\n",
			    fname, FUNC7(dtp, FUNC8(dtp)));

		(void) FUNC9(fp);
		dtp->dt_filetag = NULL;
	}

	(void) FUNC1(dirp);

	return (0);
}