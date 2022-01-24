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
struct task_struct {int dummy; } ;
struct o2hb_region {int /*<<< orphan*/  hr_steady_iterations; struct task_struct* hr_task; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  o2hb_live_lock ; 
 int /*<<< orphan*/  o2hb_steady_queue ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct o2hb_region* FUNC6 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct config_group *group,
					   struct config_item *item)
{
	struct task_struct *hb_task;
	struct o2hb_region *reg = FUNC6(item);

	/* stop the thread when the user removes the region dir */
	FUNC4(&o2hb_live_lock);
	hb_task = reg->hr_task;
	reg->hr_task = NULL;
	FUNC5(&o2hb_live_lock);

	if (hb_task)
		FUNC3(hb_task);

	/*
	 * If we're racing a dev_write(), we need to wake them.  They will
	 * check reg->hr_task
	 */
	if (FUNC0(&reg->hr_steady_iterations) != 0) {
		FUNC1(&reg->hr_steady_iterations, 0);
		FUNC7(&o2hb_steady_queue);
	}

	FUNC2(item);
}