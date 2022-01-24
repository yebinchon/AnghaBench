#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint_t ;
struct TYPE_10__ {int /*<<< orphan*/  dt_xlators; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_11__ {size_t dx_nmembers; struct TYPE_11__* dx_membdif; int /*<<< orphan*/ * dx_ident; int /*<<< orphan*/ * dx_locals; int /*<<< orphan*/  dx_nodes; } ;
typedef  TYPE_2__ dt_xlator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(dtrace_hdl_t *dtp, dt_xlator_t *dxp)
{
	uint_t i;

	FUNC5(&dxp->dx_nodes);

	if (dxp->dx_locals != NULL)
		FUNC3(dxp->dx_locals);
	else if (dxp->dx_ident != NULL)
		FUNC2(dxp->dx_ident);

	for (i = 0; i < dxp->dx_nmembers; i++)
		FUNC0(dtp, dxp->dx_membdif[i]);

	FUNC1(dtp, dxp->dx_membdif);
	FUNC4(&dtp->dt_xlators, dxp);
	FUNC1(dtp, dxp);
}