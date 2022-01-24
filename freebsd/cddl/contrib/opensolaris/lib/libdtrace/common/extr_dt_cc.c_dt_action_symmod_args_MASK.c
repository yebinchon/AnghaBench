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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  scalar_t__ dtrace_actkind_t ;
struct TYPE_6__ {TYPE_3__* dtad_difo; scalar_t__ dtad_kind; } ;
typedef  TYPE_2__ dtrace_actdesc_t ;
typedef  int /*<<< orphan*/  dt_node_t ;
struct TYPE_5__ {int dtdt_size; } ;
struct TYPE_7__ {TYPE_1__ dtdo_rtype; } ;

/* Variables and functions */
 scalar_t__ DTRACEACT_MOD ; 
 scalar_t__ DTRACEACT_SYM ; 
 scalar_t__ DTRACEACT_UADDR ; 
 scalar_t__ DTRACEACT_UMOD ; 
 scalar_t__ DTRACEACT_USYM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yypcb ; 

__attribute__((used)) static void
FUNC3(dtrace_hdl_t *dtp, dtrace_actdesc_t *ap,
    dt_node_t *dnp, dtrace_actkind_t kind)
{
	FUNC0(kind == DTRACEACT_SYM || kind == DTRACEACT_MOD ||
	    kind == DTRACEACT_USYM || kind == DTRACEACT_UMOD ||
	    kind == DTRACEACT_UADDR);

	FUNC2(yypcb, dnp);
	ap->dtad_difo = FUNC1(yypcb);
	ap->dtad_kind = kind;
	ap->dtad_difo->dtdo_rtype.dtdt_size = sizeof (uint64_t);
}