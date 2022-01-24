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
typedef  int uint_t ;
typedef  int /*<<< orphan*/  dtrace_prog_t ;
struct TYPE_8__ {int /*<<< orphan*/  ddo_xlms; int /*<<< orphan*/  ddo_rels; int /*<<< orphan*/  ddo_enoffs; int /*<<< orphan*/  ddo_offs; int /*<<< orphan*/  ddo_args; int /*<<< orphan*/  ddo_probes; int /*<<< orphan*/  ddo_udata; int /*<<< orphan*/  ddo_ldata; int /*<<< orphan*/  ddo_strs; int /*<<< orphan*/  ddo_secs; void** ddo_xlexport; void** ddo_xlimport; void* ddo_strsec; scalar_t__ ddo_nsecs; int /*<<< orphan*/ * ddo_pgp; TYPE_1__* ddo_hdl; } ;
struct TYPE_7__ {int dt_xlatorid; TYPE_2__ dt_dof; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  TYPE_2__ dt_dof_t ;
typedef  int /*<<< orphan*/  dof_secidx_t ;

/* Variables and functions */
 void* DOF_SECIDX_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void**) ; 

__attribute__((used)) static int
FUNC4(dtrace_hdl_t *dtp, dtrace_prog_t *pgp)
{
	dt_dof_t *ddo = &dtp->dt_dof;
	uint_t i, nx = dtp->dt_xlatorid;

	FUNC0(ddo->ddo_hdl == dtp);
	ddo->ddo_pgp = pgp;

	ddo->ddo_nsecs = 0;
	ddo->ddo_strsec = DOF_SECIDX_NONE;

	FUNC3(dtp, ddo->ddo_xlimport);
	FUNC3(dtp, ddo->ddo_xlexport);

	ddo->ddo_xlimport = FUNC1(dtp, sizeof (dof_secidx_t) * nx);
	ddo->ddo_xlexport = FUNC1(dtp, sizeof (dof_secidx_t) * nx);

	if (nx != 0 && (ddo->ddo_xlimport == NULL || ddo->ddo_xlexport == NULL))
		return (-1); /* errno is set for us */

	for (i = 0; i < nx; i++) {
		ddo->ddo_xlimport[i] = DOF_SECIDX_NONE;
		ddo->ddo_xlexport[i] = DOF_SECIDX_NONE;
	}

	FUNC2(dtp, &ddo->ddo_secs);
	FUNC2(dtp, &ddo->ddo_strs);
	FUNC2(dtp, &ddo->ddo_ldata);
	FUNC2(dtp, &ddo->ddo_udata);

	FUNC2(dtp, &ddo->ddo_probes);
	FUNC2(dtp, &ddo->ddo_args);
	FUNC2(dtp, &ddo->ddo_offs);
	FUNC2(dtp, &ddo->ddo_enoffs);
	FUNC2(dtp, &ddo->ddo_rels);

	FUNC2(dtp, &ddo->ddo_xlms);
	return (0);
}