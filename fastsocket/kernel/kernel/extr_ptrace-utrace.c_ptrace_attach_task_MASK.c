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
struct task_struct {int /*<<< orphan*/  exit_state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct utrace_engine*) ; 
 int FUNC1 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct utrace_engine* FUNC3 (struct task_struct*) ; 
 int FUNC4 (struct task_struct*,struct utrace_engine*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct utrace_engine*) ; 

__attribute__((used)) static int FUNC6(struct task_struct *tracee, int options)
{
	struct utrace_engine *engine;
	int err;

	engine = FUNC3(tracee);
	if (FUNC0(engine))
		return FUNC1(engine);
	/*
	 * It can fail only if the tracee is dead, the caller
	 * must notice this before setting PT_UTRACED.
	 */
	err = FUNC4(tracee, engine, options);
	FUNC2(err && !tracee->exit_state);
	FUNC5(engine);
	return 0;
}