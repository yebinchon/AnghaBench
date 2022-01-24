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
struct tasklet_struct {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASKLET_STATE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct tasklet_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct tasklet_struct *t)
{
	if (FUNC1())
		FUNC2("Attempt to kill tasklet from interrupt\n");

	while (FUNC4(TASKLET_STATE_SCHED, &t->state)) {
		do {
			FUNC6();
		} while (FUNC5(TASKLET_STATE_SCHED, &t->state));
	}
	FUNC3(t);
	FUNC0(TASKLET_STATE_SCHED, &t->state);
}