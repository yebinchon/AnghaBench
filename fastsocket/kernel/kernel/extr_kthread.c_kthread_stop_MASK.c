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
struct task_struct {int exit_code; int /*<<< orphan*/ * vfork_done; } ;
struct kthread {int should_stop; int /*<<< orphan*/  exited; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 struct kthread* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 

int FUNC8(struct task_struct *k)
{
	struct kthread *kthread;
	int ret;

	FUNC4(k);
	FUNC1(k);

	kthread = FUNC3(k);
	FUNC0(); /* it might have exited */
	if (k->vfork_done != NULL) {
		kthread->should_stop = 1;
		FUNC7(k);
		FUNC6(&kthread->exited);
	}
	ret = k->exit_code;

	FUNC2(k);
	FUNC5(ret);

	return ret;
}