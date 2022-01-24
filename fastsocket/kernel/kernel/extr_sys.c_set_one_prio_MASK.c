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
struct cred {scalar_t__ uid; scalar_t__ euid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int EACCES ; 
 int EPERM ; 
 int ESRCH ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC3 () ; 
 int FUNC4 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int) ; 
 int FUNC6 (struct task_struct*) ; 

__attribute__((used)) static int FUNC7(struct task_struct *p, int niceval, int error)
{
	const struct cred *cred = FUNC3(), *pcred = FUNC0(p);
	int no_nice;

	if (pcred->uid  != cred->euid &&
	    pcred->euid != cred->euid && !FUNC2(CAP_SYS_NICE)) {
		error = -EPERM;
		goto out;
	}
	if (niceval < FUNC6(p) && !FUNC1(p, niceval)) {
		error = -EACCES;
		goto out;
	}
	no_nice = FUNC4(p, niceval);
	if (no_nice) {
		error = no_nice;
		goto out;
	}
	if (error == -ESRCH)
		error = 0;
	FUNC5(p, niceval);
out:
	return error;
}