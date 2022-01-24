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
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_5__ {int /*<<< orphan*/  dtpdd_difo; } ;
struct TYPE_6__ {scalar_t__ dted_refcnt; int /*<<< orphan*/ * dted_action; TYPE_1__ dted_pred; } ;
typedef  TYPE_2__ dtrace_ecbdesc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void
FUNC3(dtrace_hdl_t *dtp, dtrace_ecbdesc_t *edp)
{
	if (--edp->dted_refcnt > 0)
		return;

	FUNC1(dtp, edp->dted_pred.dtpdd_difo);
	FUNC0(edp->dted_action == NULL);
	FUNC2(dtp, edp);
}