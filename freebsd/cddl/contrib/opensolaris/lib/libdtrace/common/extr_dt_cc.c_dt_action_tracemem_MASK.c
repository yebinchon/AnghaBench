#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  n ;
typedef  int /*<<< orphan*/  dtrace_stmtdesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_16__ {TYPE_1__* dtad_difo; int /*<<< orphan*/  dtad_kind; } ;
typedef  TYPE_2__ dtrace_actdesc_t ;
struct TYPE_17__ {int /*<<< orphan*/  dn_value; struct TYPE_17__* dn_list; struct TYPE_17__* dn_args; } ;
typedef  TYPE_3__ dt_node_t ;
struct TYPE_14__ {int /*<<< orphan*/  dtdt_size; int /*<<< orphan*/  dtdt_flags; } ;
struct TYPE_15__ {TYPE_10__ dtdo_rtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIF_TF_BYREF ; 
 int /*<<< orphan*/  DTRACEACT_TRACEMEM ; 
 int /*<<< orphan*/  DTRACEACT_TRACEMEM_DYNSIZE ; 
 int DT_TYPE_NAMELEN ; 
 int /*<<< orphan*/  D_TRACEMEM_ADDR ; 
 int /*<<< orphan*/  D_TRACEMEM_ARGS ; 
 int /*<<< orphan*/  D_TRACEMEM_DYNSIZE ; 
 int /*<<< orphan*/  D_TRACEMEM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_10__ dt_int_rtype ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yypcb ; 

__attribute__((used)) static void
FUNC9(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
	dtrace_actdesc_t *ap = FUNC8(dtp, sdp);

	dt_node_t *addr = dnp->dn_args;
	dt_node_t *max = dnp->dn_args->dn_list;
	dt_node_t *size;

	char n[DT_TYPE_NAMELEN];

	if (FUNC3(addr) == 0 && FUNC4(addr) == 0) {
		FUNC0(addr, D_TRACEMEM_ADDR,
		    "tracemem( ) argument #1 is incompatible with "
		    "prototype:\n\tprototype: pointer or integer\n"
		    "\t argument: %s\n",
		    FUNC7(addr, n, sizeof (n)));
	}

	if (FUNC5(max) == 0) {
		FUNC0(max, D_TRACEMEM_SIZE, "tracemem( ) argument #2 must "
		    "be a non-zero positive integral constant expression\n");
	}

	if ((size = max->dn_list) != NULL) {
		if (size->dn_list != NULL) {
			FUNC0(size, D_TRACEMEM_ARGS, "tracemem ( ) prototype "
			    "mismatch: expected at most 3 args\n");
		}

		if (!FUNC6(size)) {
			FUNC0(size, D_TRACEMEM_DYNSIZE, "tracemem ( ) "
			    "dynamic size (argument #3) must be of "
			    "scalar type\n");
		}

		FUNC2(yypcb, size);
		ap->dtad_difo = FUNC1(yypcb);
		ap->dtad_difo->dtdo_rtype = dt_int_rtype;
		ap->dtad_kind = DTRACEACT_TRACEMEM_DYNSIZE;

		ap = FUNC8(dtp, sdp);
	}

	FUNC2(yypcb, addr);
	ap->dtad_difo = FUNC1(yypcb);
	ap->dtad_kind = DTRACEACT_TRACEMEM;

	ap->dtad_difo->dtdo_rtype.dtdt_flags |= DIF_TF_BYREF;
	ap->dtad_difo->dtdo_rtype.dtdt_size = max->dn_value;
}