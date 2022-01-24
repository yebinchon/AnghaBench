#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  dtt_type; int /*<<< orphan*/  dtt_ctfp; } ;
typedef  TYPE_1__ dtrace_typeinfo_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_node_t ;
struct TYPE_13__ {int dis_varargs; int dis_optargs; int dis_argc; TYPE_8__* dis_args; scalar_t__ dis_auxinfo; } ;
typedef  TYPE_2__ dt_idsig_t ;
struct TYPE_14__ {char* di_iarg; scalar_t__ di_kind; int /*<<< orphan*/  di_name; int /*<<< orphan*/  di_type; int /*<<< orphan*/  di_ctfp; TYPE_2__* di_data; } ;
typedef  TYPE_3__ dt_ident_t ;
struct TYPE_16__ {int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
struct TYPE_15__ {int /*<<< orphan*/  pcb_jmpbuf; int /*<<< orphan*/ * pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  CTF_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ DT_IDENT_AGGFUNC ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (int) ; 
 char* FUNC14 (char*,char) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int FUNC17 (char*) ; 
 char* FUNC18 (char*,char) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int,...) ; 
 TYPE_4__* yypcb ; 

__attribute__((used)) static void
FUNC20(dt_node_t *dnp, dt_ident_t *idp, int argc, dt_node_t *args)
{
	if (idp->di_data == NULL) {
		dtrace_hdl_t *dtp = yypcb->pcb_hdl;
		dtrace_typeinfo_t dtt;
		dt_idsig_t *isp;
		char *s, *p1, *p2;
		int i = 0;

		FUNC3(idp->di_iarg != NULL);
		s = FUNC2(FUNC17(idp->di_iarg) + 1);
		(void) FUNC16(s, idp->di_iarg);

		if ((p2 = FUNC18(s, ')')) != NULL)
			*p2 = '\0'; /* mark end of parameter list string */

		if ((p1 = FUNC14(s, '(')) != NULL)
			*p1++ = '\0'; /* mark end of return type string */

		if (p1 == NULL || p2 == NULL) {
			FUNC19(D_UNKNOWN, "internal error: malformed entry "
			    "for built-in function %s\n", idp->di_name);
		}

		for (p2 = p1; *p2 != '\0'; p2++) {
			if (!FUNC11(*p2)) {
				i++;
				break;
			}
		}

		for (p2 = FUNC14(p2, ','); p2++ != NULL; i++)
			p2 = FUNC14(p2, ',');

		/*
		 * We first allocate a new ident signature structure with the
		 * appropriate number of argument entries, and then look up
		 * the return type and store its CTF data in di_ctfp/type.
		 */
		if ((isp = idp->di_data = FUNC13(sizeof (dt_idsig_t))) == NULL)
			FUNC12(yypcb->pcb_jmpbuf, EDT_NOMEM);

		isp->dis_varargs = -1;
		isp->dis_optargs = -1;
		isp->dis_argc = i;
		isp->dis_args = NULL;
		isp->dis_auxinfo = 0;

		if (i != 0 && (isp->dis_args = FUNC4(i,
		    sizeof (dt_node_t))) == NULL) {
			idp->di_data = NULL;
			FUNC10(isp);
			FUNC12(yypcb->pcb_jmpbuf, EDT_NOMEM);
		}

		if (FUNC7(s, &dtt) == -1) {
			FUNC19(D_UNKNOWN, "failed to resolve type of %s (%s):"
			    " %s\n", idp->di_name, s,
			    FUNC8(dtp, FUNC9(dtp)));
		}

		if (idp->di_kind == DT_IDENT_AGGFUNC) {
			idp->di_ctfp = FUNC0(dtp);
			idp->di_type = FUNC1(dtp);
		} else {
			idp->di_ctfp = dtt.dtt_ctfp;
			idp->di_type = dtt.dtt_type;
		}

		/*
		 * For each comma-delimited parameter in the prototype string,
		 * we look up the corresponding type and store its CTF data in
		 * the corresponding location in dis_args[].  We also recognize
		 * the special type string "@" to indicate that the specified
		 * parameter may be a D expression of *any* type (represented
		 * as a dis_args[] element with ctfp = NULL, type == CTF_ERR).
		 * If a varargs "..." is present, we record the argument index
		 * in dis_varargs for the benefit of dt_idcook_sign(), above.
		 * If the type of an argument is enclosed in square brackets
		 * (e.g. "[int]"), the argument is considered optional:  the
		 * argument may be absent, but if it is present, it must be of
		 * the specified type.  Note that varargs may not optional,
		 * optional arguments may not follow varargs, and non-optional
		 * arguments may not follow optional arguments.
		 */
		for (i = 0; i < isp->dis_argc; i++, p1 = p2) {
			while (FUNC11(*p1))
				p1++; /* skip leading whitespace */

			if ((p2 = FUNC14(p1, ',')) == NULL)
				p2 = p1 + FUNC17(p1);
			else
				*p2++ = '\0';

			if (FUNC15(p1, "@") == 0 || FUNC15(p1, "...") == 0) {
				isp->dis_args[i].dn_ctfp = NULL;
				isp->dis_args[i].dn_type = CTF_ERR;
				if (*p1 == '.')
					isp->dis_varargs = i;
				continue;
			}

			if (*p1 == '[' && p1[FUNC17(p1) - 1] == ']') {
				if (isp->dis_varargs != -1) {
					FUNC19(D_UNKNOWN, "optional arg#%d "
					    "may not follow variable arg#%d\n",
					    i + 1, isp->dis_varargs + 1);
				}

				if (isp->dis_optargs == -1)
					isp->dis_optargs = i;

				p1[FUNC17(p1) - 1] = '\0';
				p1++;
			} else if (isp->dis_optargs != -1) {
				FUNC19(D_UNKNOWN, "required arg#%d may not "
				    "follow optional arg#%d\n", i + 1,
				    isp->dis_optargs + 1);
			}

			if (FUNC7(p1, &dtt) == -1) {
				FUNC19(D_UNKNOWN, "failed to resolve type of "
				    "%s arg#%d (%s): %s\n", idp->di_name, i + 1,
				    p1, FUNC8(dtp, FUNC9(dtp)));
			}

			FUNC6(&isp->dis_args[i],
			    dtt.dtt_ctfp, dtt.dtt_type, B_FALSE);
		}
	}

	FUNC5(dnp, idp, argc, args, "", "( )");
}