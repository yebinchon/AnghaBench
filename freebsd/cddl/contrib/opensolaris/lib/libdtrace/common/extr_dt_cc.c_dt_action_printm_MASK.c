#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  dtrace_stmtdesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_13__ {TYPE_9__* dtad_difo; int /*<<< orphan*/  dtad_kind; } ;
typedef  TYPE_2__ dtrace_actdesc_t ;
struct TYPE_14__ {scalar_t__ dn_value; struct TYPE_14__* dn_list; struct TYPE_14__* dn_args; } ;
typedef  TYPE_3__ dt_node_t ;
struct TYPE_12__ {scalar_t__ dtdt_size; int /*<<< orphan*/  dtdt_flags; } ;
struct TYPE_15__ {TYPE_1__ dtdo_rtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIF_TF_BYREF ; 
 int /*<<< orphan*/  DTRACEACT_PRINTM ; 
 int DT_TYPE_NAMELEN ; 
 int /*<<< orphan*/  D_PRINTM_ADDR ; 
 int /*<<< orphan*/  D_PRINTM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_9__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yypcb ; 

__attribute__((used)) static void
FUNC7(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
	dtrace_actdesc_t *ap = FUNC6(dtp, sdp);

	dt_node_t *size = dnp->dn_args;
	dt_node_t *addr = dnp->dn_args->dn_list;

	char n[DT_TYPE_NAMELEN];

	if (FUNC4(size) == 0) {
		FUNC0(size, D_PRINTM_SIZE, "printm( ) argument #1 must "
		    "be a non-zero positive integral constant expression\n");
	}

	if (FUNC3(addr) == 0) {
		FUNC0(addr, D_PRINTM_ADDR,
		    "printm( ) argument #2 is incompatible with "
		    "prototype:\n\tprototype: pointer\n"
		    "\t argument: %s\n",
		    FUNC5(addr, n, sizeof (n)));
	}

	FUNC2(yypcb, addr);
	ap->dtad_difo = FUNC1(yypcb);
	ap->dtad_kind = DTRACEACT_PRINTM;

	ap->dtad_difo->dtdo_rtype.dtdt_flags |= DIF_TF_BYREF;
	ap->dtad_difo->dtdo_rtype.dtdt_size = size->dn_value + sizeof(uintptr_t);
}