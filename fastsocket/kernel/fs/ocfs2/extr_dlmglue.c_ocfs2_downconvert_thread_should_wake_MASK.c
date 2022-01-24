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
struct ocfs2_super {scalar_t__ dc_work_sequence; scalar_t__ dc_wake_sequence; int /*<<< orphan*/  dc_task_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ocfs2_super *osb)
{
	int should_wake = 0;

	FUNC0(&osb->dc_task_lock);
	if (osb->dc_work_sequence != osb->dc_wake_sequence)
		should_wake = 1;
	FUNC1(&osb->dc_task_lock);

	return should_wake;
}