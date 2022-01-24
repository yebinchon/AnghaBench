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
struct linux_binprm {int /*<<< orphan*/  per_clear; int /*<<< orphan*/ * mm; int /*<<< orphan*/  file; } ;
struct TYPE_3__ {int /*<<< orphan*/  personality; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_RANDOMIZE ; 
 int /*<<< orphan*/  FUNC0 (struct linux_binprm*,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct linux_binprm * bprm)
{
	int retval;

	/*
	 * Make sure we have a private signal table and that
	 * we are unassociated from the previous thread group.
	 */
	retval = FUNC1(current);
	if (retval)
		goto out;

	FUNC4(bprm->mm, bprm->file);

	/*
	 * Release all of the old mmap stuff
	 */
	FUNC0(bprm, 0);
	retval = FUNC2(bprm->mm);
	if (retval)
		goto out;

	bprm->mm = NULL;		/* We're using it now */

	current->flags &= ~PF_RANDOMIZE;
	FUNC3();
	current->personality &= ~bprm->per_clear;

	return 0;

out:
	return retval;
}