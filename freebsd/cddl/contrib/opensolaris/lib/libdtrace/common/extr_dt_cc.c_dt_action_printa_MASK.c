#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  n ;
struct TYPE_17__ {int /*<<< orphan*/  dtsd_fmtdata; } ;
typedef  TYPE_1__ dtrace_stmtdesc_t ;
struct TYPE_18__ {scalar_t__ dt_gen; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dtrace_actdesc_t ;
struct TYPE_19__ {int dn_kind; char* dn_string; struct TYPE_19__* dn_list; TYPE_5__* dn_ident; int /*<<< orphan*/  dn_line; struct TYPE_19__* dn_args; } ;
typedef  TYPE_3__ dt_node_t ;
struct TYPE_20__ {int /*<<< orphan*/  dis_args; } ;
typedef  TYPE_4__ dt_idsig_t ;
struct TYPE_21__ {scalar_t__ di_gen; int di_flags; int /*<<< orphan*/  di_id; scalar_t__ di_data; int /*<<< orphan*/  di_name; struct TYPE_21__* di_iarg; } ;
typedef  TYPE_5__ dt_ident_t ;
struct TYPE_22__ {int /*<<< orphan*/  pcb_hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACEACT_PRINTA ; 
 int DT_IDFLG_MOD ; 
#define  DT_NODE_AGG 129 
#define  DT_NODE_STRING 128 
 int /*<<< orphan*/  DT_PRINTF_AGGREGATION ; 
 int DT_TYPE_NAMELEN ; 
 int /*<<< orphan*/  D_PRINTA_AGGARG ; 
 int /*<<< orphan*/  D_PRINTA_AGGBAD ; 
 int /*<<< orphan*/  D_PRINTA_PROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  yylineno ; 
 TYPE_6__* yypcb ; 

__attribute__((used)) static void
FUNC8(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
	dt_ident_t *aid, *fid;
	dtrace_actdesc_t *ap;
	const char *format;
	dt_node_t *anp, *proto = NULL;

	char n[DT_TYPE_NAMELEN];
	int argc = 0, argr = 0;

	for (anp = dnp->dn_args; anp != NULL; anp = anp->dn_list)
		argc++; /* count up arguments for error messages below */

	switch (dnp->dn_args->dn_kind) {
	case DT_NODE_STRING:
		format = dnp->dn_args->dn_string;
		anp = dnp->dn_args->dn_list;
		argr = 2;
		break;
	case DT_NODE_AGG:
		format = NULL;
		anp = dnp->dn_args;
		argr = 1;
		break;
	default:
		format = NULL;
		anp = dnp->dn_args;
		argr = 1;
	}

	if (argc < argr) {
		FUNC1(dnp, D_PRINTA_PROTO,
		    "%s( ) prototype mismatch: %d args passed, %d expected\n",
		    dnp->dn_ident->di_name, argc, argr);
	}

	FUNC0(anp != NULL);

	while (anp != NULL) {
		if (anp->dn_kind != DT_NODE_AGG) {
			FUNC1(dnp, D_PRINTA_AGGARG,
			    "%s( ) argument #%d is incompatible with "
			    "prototype:\n\tprototype: aggregation\n"
			    "\t argument: %s\n", dnp->dn_ident->di_name, argr,
			    FUNC3(anp, n, sizeof (n)));
		}

		aid = anp->dn_ident;
		fid = aid->di_iarg;

		if (aid->di_gen == dtp->dt_gen &&
		    !(aid->di_flags & DT_IDFLG_MOD)) {
			FUNC1(dnp, D_PRINTA_AGGBAD,
			    "undefined aggregation: @%s\n", aid->di_name);
		}

		/*
		 * If we have multiple aggregations, we must be sure that
		 * their key signatures match.
		 */
		if (proto != NULL) {
			FUNC4(proto, anp);
		} else {
			proto = anp;
		}

		if (format != NULL) {
			yylineno = dnp->dn_line;

			sdp->dtsd_fmtdata =
			    FUNC5(yypcb->pcb_hdl, format);
			FUNC6(sdp->dtsd_fmtdata,
			    DT_PRINTF_AGGREGATION, dnp->dn_ident, 1,
			    fid->di_id, ((dt_idsig_t *)aid->di_data)->dis_args);
			format = NULL;
		}

		ap = FUNC7(dtp, sdp);
		FUNC2(ap, anp->dn_ident->di_id, DTRACEACT_PRINTA);

		anp = anp->dn_list;
		argr++;
	}
}