#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* dtsd_ecbdesc; } ;
typedef  TYPE_1__ dtrace_stmtdesc_t ;
typedef  int /*<<< orphan*/  dtrace_prog_t ;
typedef  int /*<<< orphan*/  dtrace_probeinfo_t ;
struct TYPE_8__ {int /*<<< orphan*/  dtpd_name; int /*<<< orphan*/  dtpd_func; int /*<<< orphan*/  dtpd_mod; int /*<<< orphan*/  dtpd_provider; } ;
typedef  TYPE_2__ dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_9__ {TYPE_2__ dted_probe; } ;
typedef  TYPE_3__ dtrace_ecbdesc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(dtrace_hdl_t *dtp, dtrace_prog_t *pgp,
    dtrace_stmtdesc_t *stp, dtrace_ecbdesc_t **last)
{
	dtrace_ecbdesc_t *edp = stp->dtsd_ecbdesc;
	dtrace_probedesc_t *pdp = &edp->dted_probe;
	dtrace_probeinfo_t p;

	if (edp == *last)
		return (0);

	FUNC1("\n%s:%s:%s:%s\n",
	    pdp->dtpd_provider, pdp->dtpd_mod, pdp->dtpd_func, pdp->dtpd_name);

	if (FUNC0(dtp, pdp, &p) == 0)
		FUNC2(&p);

	*last = edp;
	return (0);
}