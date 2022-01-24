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
struct mem_cgroup {int prev_priority; int /*<<< orphan*/  reclaim_param_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mem_cgroup *mem, int priority)
{
	FUNC0(&mem->reclaim_param_lock);
	if (priority < mem->prev_priority)
		mem->prev_priority = priority;
	FUNC1(&mem->reclaim_param_lock);
}