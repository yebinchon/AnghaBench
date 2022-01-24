#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {TYPE_5__* real_parent; int /*<<< orphan*/  ptrace; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EPERM ; 
 int PF_EXITING ; 
 int /*<<< orphan*/  PT_UTRACED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_5__*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(void)
{
	bool detach = true;
	int ret = FUNC3(current, 0);

	if (FUNC5(ret))
		return ret;

	ret = -EPERM;
	FUNC6(&tasklist_lock);
	FUNC0(current->ptrace);
	ret = FUNC4(current->parent);
	/*
	 * Check PF_EXITING to ensure ->real_parent has not passed
	 * exit_ptrace(). Otherwise we don't report the error but
	 * pretend ->real_parent untraces us right after return.
	 */
	if (!ret && !(current->real_parent->flags & PF_EXITING)) {
		current->ptrace = PT_UTRACED;
		FUNC1(current, current->real_parent);
		detach = false;
	}
	FUNC7(&tasklist_lock);

	if (detach)
		FUNC2(current);
	return ret;
}