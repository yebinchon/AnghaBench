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
struct task_struct {int dummy; } ;
struct siginfo {int dummy; } ;
struct pid {int dummy; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int FUNC0 (int,struct siginfo*,struct task_struct*) ; 
 struct task_struct* FUNC1 (struct pid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(int sig, struct siginfo *info, struct pid *pid)
{
	int error = -ESRCH;
	struct task_struct *p;

	FUNC2();
retry:
	p = FUNC1(pid, PIDTYPE_PID);
	if (p) {
		error = FUNC0(sig, info, p);
		if (FUNC4(error == -ESRCH))
			/*
			 * The task was unhashed in between, try again.
			 * If it is dead, pid_task() will return NULL,
			 * if we race with de_thread() it will find the
			 * new leader.
			 */
			goto retry;
	}
	FUNC3();

	return error;
}