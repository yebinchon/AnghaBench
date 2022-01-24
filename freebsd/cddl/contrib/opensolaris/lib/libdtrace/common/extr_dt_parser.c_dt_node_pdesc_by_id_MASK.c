#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_5__ {int /*<<< orphan*/ * dn_desc; } ;
typedef  TYPE_1__ dt_node_t ;
struct TYPE_6__ {size_t pcb_pspec; int /*<<< orphan*/  pcb_jmpbuf; int /*<<< orphan*/ * pcb_hdl; } ;

/* Variables and functions */
 size_t DTRACE_PROBESPEC_NAME ; 
 int /*<<< orphan*/  DT_NODE_PDESC ; 
 int /*<<< orphan*/  D_PDESC_INVAL ; 
 int /*<<< orphan*/  EDT_NOMEM ; 
 scalar_t__ UINT_MAX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* const FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 TYPE_2__* yypcb ; 

dt_node_t *
FUNC7(uintmax_t id)
{
	static const char *const names[] = {
		"providers", "modules", "functions"
	};

	dtrace_hdl_t *dtp = yypcb->pcb_hdl;
	dt_node_t *dnp = FUNC0(DT_NODE_PDESC);

	if ((dnp->dn_desc = FUNC5(sizeof (dtrace_probedesc_t))) == NULL)
		FUNC4(yypcb->pcb_jmpbuf, EDT_NOMEM);

	if (id > UINT_MAX) {
		FUNC6(D_PDESC_INVAL, "identifier %llu exceeds maximum "
		    "probe id\n", (u_longlong_t)id);
	}

	if (yypcb->pcb_pspec != DTRACE_PROBESPEC_NAME) {
		FUNC6(D_PDESC_INVAL, "probe identifier %llu not permitted "
		    "when specifying %s\n", (u_longlong_t)id,
		    names[yypcb->pcb_pspec]);
	}

	if (FUNC3(dtp, (dtrace_id_t)id, dnp->dn_desc) != 0) {
		FUNC6(D_PDESC_INVAL, "invalid probe identifier %llu: %s\n",
		    (u_longlong_t)id, FUNC1(dtp, FUNC2(dtp)));
	}

	return (dnp);
}