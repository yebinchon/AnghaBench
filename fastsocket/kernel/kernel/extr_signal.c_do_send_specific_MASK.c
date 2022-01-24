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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int ESRCH ; 
 int FUNC0 (int,struct siginfo*,struct task_struct*) ; 
 int FUNC1 (int,struct siginfo*,struct task_struct*,int) ; 
 struct task_struct* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct task_struct*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(pid_t tgid, pid_t pid, int sig, struct siginfo *info)
{
	struct task_struct *p;
	int error = -ESRCH;

	FUNC3();
	p = FUNC2(pid);
	if (p && (tgid <= 0 || FUNC5(p) == tgid)) {
		error = FUNC0(sig, info, p);
		/*
		 * The null signal is a permissions and process existence
		 * probe.  No signal is actually delivered.
		 */
		if (!error && sig) {
			error = FUNC1(sig, info, p, false);
			/*
			 * If lock_task_sighand() failed we pretend the task
			 * dies after receiving the signal. The window is tiny,
			 * and the signal is private anyway.
			 */
			if (FUNC6(error == -ESRCH))
				error = 0;
		}
	}
	FUNC4();

	return error;
}