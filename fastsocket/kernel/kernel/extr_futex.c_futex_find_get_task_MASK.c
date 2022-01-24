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
struct cred {scalar_t__ euid; scalar_t__ uid; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESRCH ; 
 struct cred* FUNC1 (struct task_struct*) ; 
 struct cred* FUNC2 () ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static struct task_struct * FUNC7(pid_t pid)
{
	struct task_struct *p;
	const struct cred *cred = FUNC2(), *pcred;

	FUNC5();
	p = FUNC3(pid);
	if (!p) {
		p = FUNC0(-ESRCH);
	} else {
		pcred = FUNC1(p);
		if (cred->euid != pcred->euid &&
		    cred->euid != pcred->uid)
			p = FUNC0(-ESRCH);
		else
			FUNC4(p);
	}

	FUNC6();

	return p;
}