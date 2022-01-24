#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ps_prochandle {int dummy; } ;
struct TYPE_8__ {TYPE_3__* dt_procs; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
struct TYPE_9__ {scalar_t__ dpr_refs; int /*<<< orphan*/  dpr_cacheable; } ;
typedef  TYPE_2__ dt_proc_t ;
struct TYPE_10__ {scalar_t__ dph_lrucnt; scalar_t__ dph_lrulim; } ;
typedef  TYPE_3__ dt_proc_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct ps_prochandle*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,struct ps_prochandle*,int /*<<< orphan*/ ) ; 

void
FUNC3(dtrace_hdl_t *dtp, struct ps_prochandle *P)
{
	dt_proc_t *dpr = FUNC2(dtp, P, B_FALSE);
	dt_proc_hash_t *dph = dtp->dt_procs;

	FUNC0(dpr != NULL);
	FUNC0(dpr->dpr_refs != 0);

	if (--dpr->dpr_refs == 0 &&
	    (!dpr->dpr_cacheable || dph->dph_lrucnt > dph->dph_lrulim))
		FUNC1(dtp, P);
}