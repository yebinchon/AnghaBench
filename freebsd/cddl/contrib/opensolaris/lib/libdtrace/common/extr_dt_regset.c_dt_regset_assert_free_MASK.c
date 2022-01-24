#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dr_size; int /*<<< orphan*/  dr_bitmap; } ;
typedef  TYPE_1__ dt_regset_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 

void
FUNC4(dt_regset_t *drp)
{
	int reg;
	boolean_t fail = B_FALSE;
	for (reg = 0; reg < drp->dr_size; reg++) {
		if (FUNC0(drp->dr_bitmap, reg) != 0)  {
			FUNC2("%%r%d was left allocated\n", reg);
			fail = B_TRUE;
		}
	}

	/*
	 * We set this during dtest runs to check for register leaks.
	 */
	if (fail && FUNC3("DTRACE_DEBUG_REGSET") != NULL)
		FUNC1();
}