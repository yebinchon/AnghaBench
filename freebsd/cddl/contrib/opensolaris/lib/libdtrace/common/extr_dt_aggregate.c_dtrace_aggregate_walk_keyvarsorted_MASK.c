#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dtrace_aggregate_f ;

/* Variables and functions */
 int /*<<< orphan*/  dt_aggregate_keyvarcmp ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

int
FUNC1(dtrace_hdl_t *dtp,
    dtrace_aggregate_f *func, void *arg)
{
	return (FUNC0(dtp, func,
	    arg, dt_aggregate_keyvarcmp));
}