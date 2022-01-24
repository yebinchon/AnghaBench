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
struct user_lock_res {int l_flags; int l_blocking; int /*<<< orphan*/  l_ex_holders; int /*<<< orphan*/  l_ro_holders; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  LKM_EXMODE 129 
#define  LKM_PRMODE 128 
 int USER_LOCK_BLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct user_lock_res*) ; 

__attribute__((used)) static void FUNC2(struct user_lock_res *lockres)
{
	int queue = 0;

	if (!(lockres->l_flags & USER_LOCK_BLOCKED))
		return;

	switch (lockres->l_blocking) {
	case LKM_EXMODE:
		if (!lockres->l_ex_holders && !lockres->l_ro_holders)
			queue = 1;
		break;
	case LKM_PRMODE:
		if (!lockres->l_ex_holders)
			queue = 1;
		break;
	default:
		FUNC0();
	}

	if (queue)
		FUNC1(lockres);
}