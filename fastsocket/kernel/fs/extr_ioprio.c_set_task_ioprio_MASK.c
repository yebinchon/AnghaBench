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
struct task_struct {struct io_context* io_context; } ;
struct io_context {int ioprio; int ioprio_changed; } ;
struct cred {scalar_t__ uid; scalar_t__ euid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 struct io_context* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*) ; 

int FUNC10(struct task_struct *task, int ioprio)
{
	int err;
	struct io_context *ioc;
	const struct cred *cred = FUNC3(), *tcred;

	FUNC4();
	tcred = FUNC0(task);
	if (tcred->uid != cred->euid &&
	    tcred->uid != cred->uid && !FUNC2(CAP_SYS_NICE)) {
		FUNC5();
		return -EPERM;
	}
	FUNC5();

	err = FUNC6(task, ioprio);
	if (err)
		return err;

	FUNC8(task);
	do {
		ioc = task->io_context;
		/* see wmb() in current_io_context() */
		FUNC7();
		if (ioc)
			break;

		ioc = FUNC1(GFP_ATOMIC, -1);
		if (!ioc) {
			err = -ENOMEM;
			break;
		}
		task->io_context = ioc;
	} while (1);

	if (!err) {
		ioc->ioprio = ioprio;
		ioc->ioprio_changed = 1;
	}

	FUNC9(task);
	return err;
}