#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ddo_xlms; int /*<<< orphan*/  ddo_rels; int /*<<< orphan*/  ddo_enoffs; int /*<<< orphan*/  ddo_offs; int /*<<< orphan*/  ddo_args; int /*<<< orphan*/  ddo_probes; int /*<<< orphan*/  ddo_udata; int /*<<< orphan*/  ddo_ldata; int /*<<< orphan*/  ddo_strs; int /*<<< orphan*/  ddo_secs; int /*<<< orphan*/  ddo_xlexport; int /*<<< orphan*/  ddo_xlimport; } ;
struct TYPE_6__ {TYPE_2__ dt_dof; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  TYPE_2__ dt_dof_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC2(dtrace_hdl_t *dtp)
{
	dt_dof_t *ddo = &dtp->dt_dof;

	FUNC1(dtp, ddo->ddo_xlimport);
	FUNC1(dtp, ddo->ddo_xlexport);

	FUNC0(dtp, &ddo->ddo_secs);
	FUNC0(dtp, &ddo->ddo_strs);
	FUNC0(dtp, &ddo->ddo_ldata);
	FUNC0(dtp, &ddo->ddo_udata);

	FUNC0(dtp, &ddo->ddo_probes);
	FUNC0(dtp, &ddo->ddo_args);
	FUNC0(dtp, &ddo->ddo_offs);
	FUNC0(dtp, &ddo->ddo_enoffs);
	FUNC0(dtp, &ddo->ddo_rels);

	FUNC0(dtp, &ddo->ddo_xlms);
}