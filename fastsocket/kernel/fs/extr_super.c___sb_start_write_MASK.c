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
struct TYPE_2__ {int frozen; int /*<<< orphan*/ * counter; int /*<<< orphan*/  wait_unfrozen; } ;
struct super_block {TYPE_1__ s_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

int FUNC7(struct super_block *sb, int level, bool wait)
{
	/* Out of tree modules don't use this mechanism */
	if (FUNC5(!FUNC3(sb)))
		return 1;
retry:
	if (FUNC5(sb->s_writers.frozen >= level)) {
		if (!wait)
			return 0;
		FUNC6(sb->s_writers.wait_unfrozen,
			   sb->s_writers.frozen < level);
	}

#ifdef CONFIG_LOCKDEP
	acquire_freeze_lock(sb, level, !wait, _RET_IP_);
#endif
	FUNC2(&sb->s_writers.counter[level-1]);
	/*
	 * Make sure counter is updated before we check for frozen.
	 * freeze_super() first sets frozen and then checks the counter.
	 */
	FUNC4();
	if (FUNC5(sb->s_writers.frozen >= level)) {
		FUNC0(sb, level);
		goto retry;
	}
	return 1;
}