#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_stmtdesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dtrace_actkind_t ;
typedef  int /*<<< orphan*/  dtrace_actdesc_t ;
struct TYPE_3__ {int /*<<< orphan*/  dn_args; } ;
typedef  TYPE_1__ dt_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp,
    dtrace_actkind_t kind)
{
	dtrace_actdesc_t *ap = FUNC1(dtp, sdp);
	FUNC0(dtp, ap, dnp->dn_args, kind);
}