#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_stmtdesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_19__ {int /*<<< orphan*/  dtpdd_difo; } ;
struct TYPE_20__ {TYPE_1__ dted_pred; } ;
typedef  TYPE_2__ dtrace_ecbdesc_t ;
struct TYPE_21__ {int dn_kind; struct TYPE_21__* dn_expr; int /*<<< orphan*/  dn_attr; int /*<<< orphan*/  dn_ctxattr; struct TYPE_21__* dn_list; struct TYPE_21__* dn_acts; int /*<<< orphan*/ * dn_pred; int /*<<< orphan*/  dn_desc; int /*<<< orphan*/  dn_line; } ;
typedef  TYPE_3__ dt_node_t ;
struct TYPE_22__ {TYPE_2__* pcb_ecbdesc; int /*<<< orphan*/ * pcb_stmt; int /*<<< orphan*/  pcb_jmpbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_IDFLG_REF ; 
#define  DT_NODE_AGG 130 
#define  DT_NODE_DEXPR 129 
#define  DT_NODE_DFUNC 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  D_UNKNOWN ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 int /*<<< orphan*/  _dtrace_defattr ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  yylineno ; 
 TYPE_4__* yypcb ; 

__attribute__((used)) static void
FUNC17(dtrace_hdl_t *dtp, dt_node_t *cnp, dt_node_t *pnp)
{
	dtrace_ecbdesc_t *edp;
	dtrace_stmtdesc_t *sdp;
	dt_node_t *dnp;

	yylineno = pnp->dn_line;
	FUNC13(dtp, pnp->dn_desc);
	(void) FUNC11(cnp, DT_IDFLG_REF);

	if (FUNC0(dtp, 2))
		FUNC12(cnp, stderr, 0);

	if ((edp = FUNC8(dtp, pnp->dn_desc)) == NULL)
		FUNC16(yypcb->pcb_jmpbuf, EDT_NOMEM);

	FUNC1(yypcb->pcb_ecbdesc == NULL);
	yypcb->pcb_ecbdesc = edp;

	if (cnp->dn_pred != NULL) {
		FUNC4(yypcb, cnp->dn_pred);
		edp->dted_pred.dtpdd_difo = FUNC3(yypcb);
	}

	if (cnp->dn_acts == NULL) {
		FUNC14(FUNC15(dtp, edp,
		    cnp->dn_ctxattr, _dtrace_defattr), cnp);
	}

	for (dnp = cnp->dn_acts; dnp != NULL; dnp = dnp->dn_list) {
		FUNC1(yypcb->pcb_stmt == NULL);
		sdp = FUNC15(dtp, edp, cnp->dn_ctxattr, cnp->dn_attr);

		switch (dnp->dn_kind) {
		case DT_NODE_DEXPR:
			if (dnp->dn_expr->dn_kind == DT_NODE_AGG)
				FUNC5(dtp, dnp->dn_expr, sdp);
			else
				FUNC6(dtp, dnp, sdp);
			break;
		case DT_NODE_DFUNC:
			FUNC7(dtp, dnp, sdp);
			break;
		case DT_NODE_AGG:
			FUNC5(dtp, dnp, sdp);
			break;
		default:
			FUNC2(dnp, D_UNKNOWN, "internal error -- node kind "
			    "%u is not a valid statement\n", dnp->dn_kind);
		}

		FUNC1(yypcb->pcb_stmt == sdp);
		FUNC14(sdp, dnp);
	}

	FUNC1(yypcb->pcb_ecbdesc == edp);
	FUNC9(dtp, edp);
	FUNC10(dtp);
	yypcb->pcb_ecbdesc = NULL;
}