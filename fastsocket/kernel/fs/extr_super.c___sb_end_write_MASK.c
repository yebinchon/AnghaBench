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
struct TYPE_2__ {int /*<<< orphan*/ * lock_map; int /*<<< orphan*/  wait; int /*<<< orphan*/ * counter; } ;
struct super_block {TYPE_1__ s_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct super_block *sb, int level)
{
	/* Out of tree modules don't use this mechanism */
	if (FUNC4(!FUNC2(sb)))
		return;

	FUNC0(&sb->s_writers.counter[level-1]);
	/*
	 * Make sure s_writers are updated before we wake up waiters in
	 * freeze_super().
	 */
	FUNC3();
	if (FUNC5(&sb->s_writers.wait))
		FUNC6(&sb->s_writers.wait);
	FUNC1(&sb->s_writers.lock_map[level-1], 1, _RET_IP_);
}