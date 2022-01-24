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
struct TYPE_2__ {int /*<<< orphan*/  index; } ;
struct restart_block {TYPE_1__ nanosleep; } ;
struct k_clock {long (* nsleep_restart ) (struct restart_block*) ;} ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 long EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct k_clock* FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (struct restart_block*) ; 

long FUNC3(struct restart_block *restart_block)
{
	clockid_t which_clock = restart_block->nanosleep.index;
	struct k_clock *kc = FUNC1(which_clock);

	if (FUNC0(!kc || !kc->nsleep_restart))
		return -EINVAL;

	return kc->nsleep_restart(restart_block);
}