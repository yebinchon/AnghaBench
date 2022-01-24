#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct linux_binprm {int /*<<< orphan*/ * cred; } ;
struct TYPE_2__ {int /*<<< orphan*/  cred_guard_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC3 (struct linux_binprm*) ; 

void FUNC4(struct linux_binprm *bprm)
{
	FUNC3(bprm);

	FUNC0(bprm->cred);
	bprm->cred = NULL;
	/*
	 * cred_guard_mutex must be held at least to this point to prevent
	 * ptrace_attach() from altering our determination of the task's
	 * credentials; any time after this it may be unlocked.
	 */
	FUNC2(bprm);
	FUNC1(&current->cred_guard_mutex);
}