#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_5__ {char* pr_name; int pr_nargc; } ;
typedef  TYPE_1__ dt_probe_t ;
typedef  int /*<<< orphan*/  dt_idhash_t ;
struct TYPE_6__ {TYPE_1__* di_data; } ;
typedef  TYPE_2__ dt_ident_t ;
struct TYPE_7__ {char* dthi_pmname; char* dthi_pfname; int /*<<< orphan*/  dthi_out; int /*<<< orphan*/  dthi_empty; int /*<<< orphan*/ * dthi_dtp; } ;
typedef  TYPE_3__ dt_header_info_t ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (char const*,char) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(dt_idhash_t *dhp, dt_ident_t *idp, void *data)
{
	dt_header_info_t *infop = data;
	dtrace_hdl_t *dtp = infop->dthi_dtp;
	dt_probe_t *prp = idp->di_data;
	char *mname, *fname;
	const char *p;
	int i;

	p = prp->pr_name;
	for (i = 0; (p = FUNC5(p, '-')) != NULL; i++)
		p++;

	mname = FUNC0(FUNC6(prp->pr_name) + 1);
	FUNC2(mname, prp->pr_name);

	fname = FUNC0(FUNC6(prp->pr_name) + 1 + i);
	FUNC1(fname, prp->pr_name);

	if (FUNC4(infop->dthi_out, "#define\t%s_%s(",
	    infop->dthi_pmname, mname) < 0)
		return (FUNC3(dtp, errno));

	for (i = 0; i < prp->pr_nargc; i++) {
		if (FUNC4(infop->dthi_out, "arg%d", i) < 0)
			return (FUNC3(dtp, errno));

		if (i + 1 != prp->pr_nargc &&
		    FUNC4(infop->dthi_out, ", ") < 0)
			return (FUNC3(dtp, errno));
	}

	if (!infop->dthi_empty) {
		if (FUNC4(infop->dthi_out, ") \\\n\t") < 0)
			return (FUNC3(dtp, errno));

		if (FUNC4(infop->dthi_out, "__dtrace_%s___%s(",
		    infop->dthi_pfname, fname) < 0)
			return (FUNC3(dtp, errno));

		for (i = 0; i < prp->pr_nargc; i++) {
			if (FUNC4(infop->dthi_out, "arg%d", i) < 0)
				return (FUNC3(dtp, errno));

			if (i + 1 != prp->pr_nargc &&
			    FUNC4(infop->dthi_out, ", ") < 0)
				return (FUNC3(dtp, errno));
		}
	}

	if (FUNC4(infop->dthi_out, ")\n") < 0)
		return (FUNC3(dtp, errno));

	if (!infop->dthi_empty) {
		if (FUNC4(infop->dthi_out,
		    "#ifndef\t__sparc\n"
		    "#define\t%s_%s_ENABLED() \\\n"
		    "\t__dtraceenabled_%s___%s()\n"
		    "#else\n"
		    "#define\t%s_%s_ENABLED() \\\n"
		    "\t__dtraceenabled_%s___%s(0)\n"
		    "#endif\n",
		    infop->dthi_pmname, mname,
		    infop->dthi_pfname, fname,
		    infop->dthi_pmname, mname,
		    infop->dthi_pfname, fname) < 0)
			return (FUNC3(dtp, errno));

	} else {
		if (FUNC4(infop->dthi_out, "#define\t%s_%s_ENABLED() (0)\n",
		    infop->dthi_pmname, mname) < 0)
			return (FUNC3(dtp, errno));
	}

	return (0);
}