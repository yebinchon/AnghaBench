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
struct utrace {int /*<<< orphan*/  lock; scalar_t__ vfork_stop; } ;
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UTRACE_RESUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct utrace* FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct utrace*,int /*<<< orphan*/ ) ; 

void FUNC4(struct task_struct *task)
{
	struct utrace *utrace = FUNC2(task);

	if (utrace->vfork_stop) {
		FUNC0(&utrace->lock);
		utrace->vfork_stop = 0;
		FUNC1(&utrace->lock);
		FUNC3(task, utrace, UTRACE_RESUME); /* XXX */
	}
}