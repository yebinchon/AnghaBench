#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_10__ {size_t dt_provbuckets; int /*<<< orphan*/  dt_nprovs; int /*<<< orphan*/  dt_provlist; TYPE_3__** dt_provs; } ;
typedef  TYPE_2__ dtrace_hdl_t ;
struct TYPE_9__ {int /*<<< orphan*/  dtvd_name; } ;
struct TYPE_11__ {struct TYPE_11__* pv_xrefs; int /*<<< orphan*/  pv_nodes; int /*<<< orphan*/ * pv_probes; struct TYPE_11__* pv_next; TYPE_1__ pv_desc; TYPE_2__* pv_hdl; } ;
typedef  TYPE_3__ dt_provider_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6(dtrace_hdl_t *dtp, dt_provider_t *pvp)
{
	dt_provider_t **pp;
	uint_t h;

	FUNC0(pvp->pv_hdl == dtp);

	h = FUNC5(pvp->pv_desc.dtvd_name, NULL) % dtp->dt_provbuckets;
	pp = &dtp->dt_provs[h];

	while (*pp != NULL && *pp != pvp)
		pp = &(*pp)->pv_next;

	FUNC0(*pp != NULL && *pp == pvp);
	*pp = pvp->pv_next;

	FUNC3(&dtp->dt_provlist, pvp);
	dtp->dt_nprovs--;

	if (pvp->pv_probes != NULL)
		FUNC2(pvp->pv_probes);

	FUNC4(&pvp->pv_nodes);
	FUNC1(dtp, pvp->pv_xrefs);
	FUNC1(dtp, pvp);
}