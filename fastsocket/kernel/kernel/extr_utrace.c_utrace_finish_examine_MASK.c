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
struct utrace_examiner {scalar_t__ state; unsigned long ncsw; } ;
struct utrace_engine {int dummy; } ;
struct task_struct {scalar_t__ state; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC0 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 unsigned long FUNC7 (struct task_struct*,scalar_t__) ; 

int FUNC8(struct task_struct *target,
			  struct utrace_engine *engine,
			  struct utrace_examiner *exam)
{
	int ret = 0;

	if (FUNC6(target == current))
		return 0;

	FUNC4();
	if (FUNC6(!FUNC0(engine)))
		ret = -EINVAL;
	else if (FUNC6(target->state != exam->state))
		ret = -EAGAIN;
	else
		FUNC1(target);
	FUNC5();

	if (FUNC2(!ret)) {
		unsigned long ncsw = FUNC7(target, exam->state);
		if (FUNC6(ncsw != exam->ncsw))
			ret = -EAGAIN;
		FUNC3(target);
	}

	return ret;
}