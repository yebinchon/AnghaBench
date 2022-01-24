#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_5__ {int dpr_stop; int /*<<< orphan*/  dpr_lock; int /*<<< orphan*/  dpr_cv; } ;
typedef  TYPE_1__ dt_proc_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int DT_PROC_STOP_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(dt_proc_t *dpr, uint8_t why)
{
	FUNC1(FUNC0(&dpr->dpr_lock));
	FUNC1(why != DT_PROC_STOP_IDLE);

	if (dpr->dpr_stop & why) {
		dpr->dpr_stop |= DT_PROC_STOP_IDLE;
		dpr->dpr_stop &= ~why;

		(void) FUNC4(&dpr->dpr_cv);

		/*
		 * We disable breakpoints while stopped to preserve the
		 * integrity of the program text for both our own disassembly
		 * and that of the kernel.
		 */
		FUNC2(dpr);

		while (dpr->dpr_stop & DT_PROC_STOP_IDLE)
			(void) FUNC5(&dpr->dpr_cv, &dpr->dpr_lock);

		FUNC3(dpr);
	}
}