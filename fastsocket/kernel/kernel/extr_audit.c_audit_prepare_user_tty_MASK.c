#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {TYPE_1__* sighand; TYPE_2__* signal; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_4__ {int /*<<< orphan*/  audit_tty; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int EPERM ; 
 int ESRCH ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(pid_t pid, uid_t loginuid, u32 sessionid)
{
	struct task_struct *tsk;
	int err;

	FUNC1(&tasklist_lock);
	tsk = FUNC0(pid);
	err = -ESRCH;
	if (!tsk)
		goto out;
	err = 0;

	FUNC3(&tsk->sighand->siglock);
	if (!tsk->signal->audit_tty)
		err = -EPERM;
	FUNC4(&tsk->sighand->siglock);
	if (err)
		goto out;

	FUNC5(tsk, loginuid, sessionid);
out:
	FUNC2(&tasklist_lock);
	return err;
}