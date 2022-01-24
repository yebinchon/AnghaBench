#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pd ;
struct TYPE_14__ {int /*<<< orphan*/  dt_errno; } ;
typedef  TYPE_1__ dtrace_hdl_t ;
typedef  int (* dtrace_aggregate_walk_f ) (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ;
struct TYPE_15__ {int dtpa_allunprint; int /*<<< orphan*/ * dtpa_fp; TYPE_1__* dtpa_dtp; } ;
typedef  TYPE_3__ dt_print_aggdata_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  dt_print_agg ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 

int
FUNC4(dtrace_hdl_t *dtp, FILE *fp,
    dtrace_aggregate_walk_f *func)
{
	dt_print_aggdata_t pd;

	FUNC0(&pd, sizeof (pd));

	pd.dtpa_dtp = dtp;
	pd.dtpa_fp = fp;
	pd.dtpa_allunprint = 1;

	if (func == NULL)
		func = dtrace_aggregate_walk_sorted;

	if ((*func)(dtp, dt_print_agg, &pd) == -1)
		return (FUNC1(dtp, dtp->dt_errno));

	return (0);
}