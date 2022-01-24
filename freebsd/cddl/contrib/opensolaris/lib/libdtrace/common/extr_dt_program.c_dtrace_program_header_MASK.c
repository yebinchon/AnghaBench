#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dt_provlist; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_provider_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (char const*,char) ; 

int
FUNC8(dtrace_hdl_t *dtp, FILE *out, const char *fname)
{
	dt_provider_t *pvp;
	char *mfname, *p;

	if (fname != NULL) {
		if ((p = FUNC7(fname, '/')) != NULL)
			fname = p + 1;

		mfname = FUNC0(FUNC6(fname) + 1);
		FUNC1(mfname, fname);
		if (FUNC5(out, "#ifndef\t_%s\n#define\t_%s\n\n",
		    mfname, mfname) < 0)
			return (FUNC4(dtp, errno));
	}

	if (FUNC5(out, "#include <unistd.h>\n\n") < 0)
		return (-1);

	if (FUNC5(out, "#ifdef\t__cplusplus\nextern \"C\" {\n#endif\n\n") < 0)
		return (-1);

	for (pvp = FUNC3(&dtp->dt_provlist);
	    pvp != NULL; pvp = FUNC3(pvp)) {
		if (FUNC2(dtp, pvp, out) != 0)
			return (-1); /* dt_errno is set for us */
	}

	if (FUNC5(out, "\n#ifdef\t__cplusplus\n}\n#endif\n") < 0)
		return (FUNC4(dtp, errno));

	if (fname != NULL && FUNC5(out, "\n#endif\t/* _%s */\n", mfname) < 0)
		return (FUNC4(dtp, errno));

	return (0);
}