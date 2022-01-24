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
struct utrace_examiner {int dummy; } ;
struct utrace_engine {int dummy; } ;
struct task_struct {scalar_t__ parent; } ;

/* Variables and functions */
 int ESRCH ; 
 scalar_t__ FUNC0 (struct utrace_engine*) ; 
 int /*<<< orphan*/  UTRACE_STOP ; 
 scalar_t__ current ; 
 struct utrace_engine* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct utrace_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,struct utrace_engine*,struct utrace_examiner*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

int FUNC9(struct task_struct *child, int kill)
{
	struct utrace_engine *engine;
	struct utrace_examiner exam;
	int ret = -ESRCH;

	engine = FUNC1(child);
	if (FUNC0(engine))
		return ret;

	if (child->parent != current)
		goto out;

	if (FUNC3(kill))
		ret = 0;

	if (!FUNC2(child))
		goto out;
	/*
	 * Make sure our engine has already stopped the child.
	 * Then wait for it to be off the CPU.
	 */
	FUNC6(child);
	if (!FUNC4(child, engine, UTRACE_STOP) &&
	    !FUNC7(child, engine, &exam))
		ret = 0;
	else
		FUNC8(child);

out:
	FUNC5(engine);
	return ret;
}