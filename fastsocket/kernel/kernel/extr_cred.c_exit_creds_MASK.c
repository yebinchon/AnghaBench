#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int /*<<< orphan*/ * replacement_session_keyring; TYPE_1__* cred; int /*<<< orphan*/ * real_cred; int /*<<< orphan*/  pid; } ;
struct cred {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cred*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cred*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred*) ; 

void FUNC6(struct task_struct *tsk)
{
	struct cred *cred;

	FUNC2("exit_creds(%u,%p,%p,{%d,%d})", tsk->pid, tsk->real_cred, tsk->cred,
	       FUNC1(&tsk->cred->usage),
	       FUNC4(tsk->cred));

	cred = (struct cred *) tsk->real_cred;
	tsk->real_cred = NULL;
	FUNC5(cred);
	FUNC0(cred, -1);
	FUNC3(cred);

	cred = (struct cred *) tsk->cred;
	tsk->cred = NULL;
	FUNC5(cred);
	FUNC0(cred, -1);
	FUNC3(cred);

	cred = (struct cred *) tsk->replacement_session_keyring;
	if (cred) {
		tsk->replacement_session_keyring = NULL;
		FUNC5(cred);
		FUNC3(cred);
	}
}