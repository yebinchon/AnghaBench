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
struct TYPE_2__ {int /*<<< orphan*/  wait; int /*<<< orphan*/ * counter; int /*<<< orphan*/ * lock_map; } ;
struct super_block {TYPE_1__ s_writers; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  _THIS_IP_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  wait ; 

void FUNC9(struct super_block *sb, int level)
{
	s64 writers;

	/* Out of tree modules don't use this mechanism */
	if (FUNC8(!FUNC6(sb)))
		return;
	/*
	 * We just cycle-through lockdep here so that it does not complain
	 * about returning with lock to userspace
	 */
	FUNC4(&sb->s_writers.lock_map[level-1], 0, 0, _THIS_IP_);
	FUNC5(&sb->s_writers.lock_map[level-1], 1, _THIS_IP_);

	do {
		FUNC0(wait);

		/*
		 * We use a barrier in prepare_to_wait() to separate setting
		 * of frozen and checking of the counter
		 */
		FUNC3(&sb->s_writers.wait, &wait,
				TASK_UNINTERRUPTIBLE);

		writers = FUNC2(&sb->s_writers.counter[level-1]);
		if (writers)
			FUNC7();

		FUNC1(&sb->s_writers.wait, &wait);
	} while (writers);
}