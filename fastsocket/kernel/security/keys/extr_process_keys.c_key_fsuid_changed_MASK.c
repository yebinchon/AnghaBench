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
struct task_struct {TYPE_1__* cred; } ;
struct TYPE_4__ {int /*<<< orphan*/  sem; int /*<<< orphan*/  uid; } ;
struct TYPE_3__ {TYPE_2__* thread_keyring; int /*<<< orphan*/  fsuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct task_struct *tsk)
{
	/* update the ownership of the thread keyring */
	FUNC0(!tsk->cred);
	if (tsk->cred->thread_keyring) {
		FUNC1(&tsk->cred->thread_keyring->sem);
		tsk->cred->thread_keyring->uid = tsk->cred->fsuid;
		FUNC2(&tsk->cred->thread_keyring->sem);
	}
}