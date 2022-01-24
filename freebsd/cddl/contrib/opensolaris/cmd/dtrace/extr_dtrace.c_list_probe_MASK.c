#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_probeinfo_t ;
struct TYPE_4__ {int /*<<< orphan*/  dtpd_name; int /*<<< orphan*/  dtpd_func; int /*<<< orphan*/  dtpd_mod; int /*<<< orphan*/  dtpd_provider; int /*<<< orphan*/  dtpd_id; } ;
typedef  TYPE_1__ dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ g_intr ; 
 scalar_t__ g_verbose ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(dtrace_hdl_t *dtp, const dtrace_probedesc_t *pdp, void *arg)
{
	dtrace_probeinfo_t p;

	FUNC1("%5d %10s %17s %33s %s\n", pdp->dtpd_id,
	    pdp->dtpd_provider, pdp->dtpd_mod, pdp->dtpd_func, pdp->dtpd_name);

	if (g_verbose && FUNC0(dtp, pdp, &p) == 0)
		FUNC2(&p);

	if (g_intr != 0)
		return (1);

	return (0);
}