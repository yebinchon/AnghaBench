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
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_4__ {scalar_t__ dm_pid; scalar_t__ dm_nctflibs; } ;
typedef  TYPE_1__ dt_module_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC1(dtrace_hdl_t *dtp, dt_module_t *dmp)
{
	if (dmp->dm_pid != 0 && dmp->dm_nctflibs > 0)
		return (1);
	return (FUNC0(dtp, dmp) != NULL);
}