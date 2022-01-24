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
struct utrace {int /*<<< orphan*/  lock; struct utrace_engine* reporting; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (struct utrace*) ; 
 int FUNC1 (struct utrace*) ; 
 struct task_struct* current ; 
 struct utrace* FUNC2 (struct task_struct*,struct utrace_engine*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct task_struct *target, struct utrace_engine *engine)
{
	struct utrace *utrace;
	int ret = -ERESTARTSYS;

	if (FUNC6(target == current))
		return 0;

	do {
		utrace = FUNC2(target, engine, false);
		if (FUNC6(FUNC0(utrace))) {
			ret = FUNC1(utrace);
			if (ret != -ERESTARTSYS)
				break;
		} else {
			/*
			 * All engine state changes are done while
			 * holding the lock, i.e. before we get here.
			 * Since we have the lock, we only need to
			 * worry about @target making a callback.
			 * When it has entered start_callback() but
			 * not yet gotten to finish_callback(), we
			 * will see utrace->reporting == @engine.
			 * When @target doesn't take the lock, it uses
			 * barriers to order setting utrace->reporting
			 * before it examines the engine state.
			 */
			if (utrace->reporting != engine)
				ret = 0;
			FUNC5(&utrace->lock);
			if (!ret)
				break;
		}
		FUNC3(1);
	} while (!FUNC4(current));

	return ret;
}