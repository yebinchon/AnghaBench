#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_stmtdesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_8__ {TYPE_5__* dtad_difo; int /*<<< orphan*/  dtad_kind; } ;
typedef  TYPE_2__ dtrace_actdesc_t ;
struct TYPE_9__ {int /*<<< orphan*/  dn_args; } ;
typedef  TYPE_3__ dt_node_t ;
struct TYPE_7__ {int dtdt_size; } ;
struct TYPE_10__ {TYPE_1__ dtdo_rtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACEACT_EXIT ; 
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yypcb ; 

__attribute__((used)) static void
FUNC3(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
	dtrace_actdesc_t *ap = FUNC2(dtp, sdp);

	FUNC1(yypcb, dnp->dn_args);
	ap->dtad_difo = FUNC0(yypcb);
	ap->dtad_kind = DTRACEACT_EXIT;
	ap->dtad_difo->dtdo_rtype.dtdt_size = sizeof (int);
}