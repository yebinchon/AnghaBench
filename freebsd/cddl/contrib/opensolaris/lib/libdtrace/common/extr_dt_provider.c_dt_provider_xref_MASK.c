#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong_t ;
typedef  scalar_t__ id_t ;
struct TYPE_7__ {scalar_t__ dt_xlatorid; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_8__ {scalar_t__ pv_xrmax; int /*<<< orphan*/ * pv_xrefs; } ;
typedef  TYPE_2__ dt_provider_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,size_t) ; 

int
FUNC6(dtrace_hdl_t *dtp, dt_provider_t *pvp, id_t id)
{
	size_t oldsize = FUNC1(pvp->pv_xrmax);
	size_t newsize = FUNC1(dtp->dt_xlatorid);

	FUNC2(id >= 0 && id < dtp->dt_xlatorid);

	if (newsize > oldsize) {
		ulong_t *xrefs = FUNC5(dtp, newsize);

		if (xrefs == NULL)
			return (-1);

		FUNC3(pvp->pv_xrefs, xrefs, oldsize);
		FUNC4(dtp, pvp->pv_xrefs);

		pvp->pv_xrefs = xrefs;
		pvp->pv_xrmax = dtp->dt_xlatorid;
	}

	FUNC0(pvp->pv_xrefs, id);
	return (0);
}