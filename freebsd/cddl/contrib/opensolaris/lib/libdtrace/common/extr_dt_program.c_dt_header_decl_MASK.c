#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_6__ {char* pr_name; int pr_nargc; TYPE_2__* pr_nargs; } ;
typedef  TYPE_1__ dt_probe_t ;
struct TYPE_7__ {int /*<<< orphan*/  dn_type; int /*<<< orphan*/  dn_ctfp; struct TYPE_7__* dn_list; } ;
typedef  TYPE_2__ dt_node_t ;
typedef  int /*<<< orphan*/  dt_idhash_t ;
struct TYPE_8__ {TYPE_1__* di_data; } ;
typedef  TYPE_3__ dt_ident_t ;
struct TYPE_9__ {char* dthi_pfname; int /*<<< orphan*/  dthi_out; int /*<<< orphan*/ * dthi_dtp; } ;
typedef  TYPE_4__ dt_header_info_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int DT_TYPE_NAMELEN ; 
 char* FUNC0 (scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
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
	dt_node_t *dnp;
	char buf[DT_TYPE_NAMELEN];
	char *fname;
	const char *p;
	int i;

	p = prp->pr_name;
	for (i = 0; (p = FUNC5(p, '-')) != NULL; i++)
		p++;

	fname = FUNC0(FUNC6(prp->pr_name) + 1 + i);
	FUNC2(fname, prp->pr_name);

	if (FUNC4(infop->dthi_out, "extern void __dtrace_%s___%s(",
	    infop->dthi_pfname, fname) < 0)
		return (FUNC3(dtp, errno));

	for (dnp = prp->pr_nargs, i = 0; dnp != NULL; dnp = dnp->dn_list, i++) {
		if (FUNC4(infop->dthi_out, "%s",
		    FUNC1(dnp->dn_ctfp, dnp->dn_type,
		    buf, sizeof (buf))) < 0)
			return (FUNC3(dtp, errno));

		if (i + 1 != prp->pr_nargc &&
		    FUNC4(infop->dthi_out, ", ") < 0)
			return (FUNC3(dtp, errno));
	}

	if (i == 0 && FUNC4(infop->dthi_out, "void") < 0)
		return (FUNC3(dtp, errno));

	if (FUNC4(infop->dthi_out, ");\n") < 0)
		return (FUNC3(dtp, errno));

	if (FUNC4(infop->dthi_out,
	    "#ifndef\t__sparc\n"
	    "extern int __dtraceenabled_%s___%s(void);\n"
	    "#else\n"
	    "extern int __dtraceenabled_%s___%s(long);\n"
	    "#endif\n",
	    infop->dthi_pfname, fname, infop->dthi_pfname, fname) < 0)
		return (FUNC3(dtp, errno));

	return (0);
}