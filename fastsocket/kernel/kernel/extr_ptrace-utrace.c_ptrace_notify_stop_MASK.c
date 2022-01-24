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
struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct utrace_engine*) ; 
 struct utrace_engine* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct utrace_engine*) ; 

void FUNC5(struct task_struct *tracee)
{
	struct utrace_engine *engine = FUNC3(tracee);

	if (FUNC0(engine))
		return;

	FUNC1(FUNC2(engine), tracee);
	FUNC4(engine);
}