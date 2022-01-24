#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dtpd_id; } ;
typedef  TYPE_1__ dtrace_probedesc_t ;
typedef  scalar_t__ dtrace_id_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACEIOC_PROBES ; 
 int /*<<< orphan*/  EDT_BADID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(dtrace_hdl_t *dtp, dtrace_id_t id, dtrace_probedesc_t *pdp)
{
	FUNC0(pdp, sizeof (dtrace_probedesc_t));
	pdp->dtpd_id = id;

	if (FUNC1(dtp, DTRACEIOC_PROBES, pdp) == -1 ||
	    pdp->dtpd_id != id)
		return (FUNC2(dtp, EDT_BADID));

	return (0);
}