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
struct call_single_data {int /*<<< orphan*/  info; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct call_single_data*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct call_single_data*,int) ; 
 unsigned int FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  oops_in_progress ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(int cpu, struct call_single_data *data,
				int wait)
{
	unsigned int this_cpu;
	unsigned long flags;

	this_cpu = FUNC4();
	/*
	 * Can deadlock when called with interrupts disabled.
	 * We allow cpu's that are not yet online though, as no one else can
	 * send smp call function interrupt to this cpu and as such deadlocks
	 * can't happen.
	 */
	FUNC0(FUNC1(FUNC9()) && wait && FUNC5()
		     && !oops_in_progress);

	if (cpu == this_cpu) {
		FUNC7(flags);
		data->func(data->info);
		FUNC6(flags);
	} else {
		FUNC2(data);
		FUNC3(cpu, data, wait);
	}
	FUNC8();
}