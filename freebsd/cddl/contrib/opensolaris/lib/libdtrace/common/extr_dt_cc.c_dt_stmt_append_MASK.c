#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_4__* dtsd_ecbdesc; } ;
typedef  TYPE_3__ dtrace_stmtdesc_t ;
struct TYPE_13__ {TYPE_5__* dted_action; } ;
typedef  TYPE_4__ dtrace_ecbdesc_t ;
struct TYPE_14__ {scalar_t__ dtad_kind; TYPE_2__* dtad_difo; struct TYPE_14__* dtad_next; } ;
typedef  TYPE_5__ dtrace_actdesc_t ;
typedef  int /*<<< orphan*/  dt_node_t ;
struct TYPE_15__ {TYPE_3__* pcb_stmt; int /*<<< orphan*/  pcb_hdl; int /*<<< orphan*/  pcb_jmpbuf; int /*<<< orphan*/  pcb_prog; } ;
struct TYPE_10__ {scalar_t__ dtdt_kind; scalar_t__ dtdt_size; } ;
struct TYPE_11__ {TYPE_1__ dtdo_rtype; } ;

/* Variables and functions */
 scalar_t__ DIF_TYPE_CTF ; 
 scalar_t__ DTRACEACT_COMMIT ; 
 scalar_t__ DTRACEACT_DIFEXPR ; 
 scalar_t__ DTRACEACT_DISCARD ; 
 scalar_t__ DTRACEACT_EXIT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ DTRACEACT_SPECULATE ; 
 int /*<<< orphan*/  D_ACT_SPEC ; 
 int /*<<< orphan*/  D_AGG_COMM ; 
 int /*<<< orphan*/  D_AGG_SPEC ; 
 int /*<<< orphan*/  D_COMM_COMM ; 
 int /*<<< orphan*/  D_COMM_DREC ; 
 int /*<<< orphan*/  D_DREC_COMM ; 
 int /*<<< orphan*/  D_EXIT_SPEC ; 
 int /*<<< orphan*/  D_SPEC_COMM ; 
 int /*<<< orphan*/  D_SPEC_DREC ; 
 int /*<<< orphan*/  D_SPEC_SPEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* yypcb ; 

__attribute__((used)) static void
FUNC6(dtrace_stmtdesc_t *sdp, const dt_node_t *dnp)
{
	dtrace_ecbdesc_t *edp = sdp->dtsd_ecbdesc;
	dtrace_actdesc_t *ap, *tap;
	int commit = 0;
	int speculate = 0;
	int datarec = 0;

	/*
	 * Make sure that the new statement jibes with the rest of the ECB.
	 */
	for (ap = edp->dted_action; ap != NULL; ap = ap->dtad_next) {
		if (ap->dtad_kind == DTRACEACT_COMMIT) {
			if (commit) {
				FUNC1(dnp, D_COMM_COMM, "commit( ) may "
				    "not follow commit( )\n");
			}

			if (datarec) {
				FUNC1(dnp, D_COMM_DREC, "commit( ) may "
				    "not follow data-recording action(s)\n");
			}

			for (tap = ap; tap != NULL; tap = tap->dtad_next) {
				if (!FUNC0(tap->dtad_kind))
					continue;

				FUNC1(dnp, D_AGG_COMM, "aggregating actions "
				    "may not follow commit( )\n");
			}

			commit = 1;
			continue;
		}

		if (ap->dtad_kind == DTRACEACT_SPECULATE) {
			if (speculate) {
				FUNC1(dnp, D_SPEC_SPEC, "speculate( ) may "
				    "not follow speculate( )\n");
			}

			if (commit) {
				FUNC1(dnp, D_SPEC_COMM, "speculate( ) may "
				    "not follow commit( )\n");
			}

			if (datarec) {
				FUNC1(dnp, D_SPEC_DREC, "speculate( ) may "
				    "not follow data-recording action(s)\n");
			}

			speculate = 1;
			continue;
		}

		if (FUNC0(ap->dtad_kind)) {
			if (speculate) {
				FUNC1(dnp, D_AGG_SPEC, "aggregating actions "
				    "may not follow speculate( )\n");
			}

			datarec = 1;
			continue;
		}

		if (speculate) {
			if (FUNC2(ap)) {
				FUNC1(dnp, D_ACT_SPEC, "destructive actions "
				    "may not follow speculate( )\n");
			}

			if (ap->dtad_kind == DTRACEACT_EXIT) {
				FUNC1(dnp, D_EXIT_SPEC, "exit( ) may not "
				    "follow speculate( )\n");
			}
		}

		/*
		 * Exclude all non data-recording actions.
		 */
		if (FUNC2(ap) ||
		    ap->dtad_kind == DTRACEACT_DISCARD)
			continue;

		if (ap->dtad_kind == DTRACEACT_DIFEXPR &&
		    ap->dtad_difo->dtdo_rtype.dtdt_kind == DIF_TYPE_CTF &&
		    ap->dtad_difo->dtdo_rtype.dtdt_size == 0)
			continue;

		if (commit) {
			FUNC1(dnp, D_DREC_COMM, "data-recording actions "
			    "may not follow commit( )\n");
		}

		if (!speculate)
			datarec = 1;
	}

	if (FUNC4(yypcb->pcb_hdl, yypcb->pcb_prog, sdp) != 0)
		FUNC5(yypcb->pcb_jmpbuf, FUNC3(yypcb->pcb_hdl));

	if (yypcb->pcb_stmt == sdp)
		yypcb->pcb_stmt = NULL;
}