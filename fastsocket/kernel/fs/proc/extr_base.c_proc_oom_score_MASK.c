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

/* Variables and functions */
 unsigned long FUNC0 (struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ total_swap_pages ; 
 scalar_t__ totalram_pages ; 

__attribute__((used)) static int FUNC5(struct task_struct *task, char *buffer)
{
	unsigned long points = 0;

	FUNC2(&tasklist_lock);
	if (FUNC1(task))
		points = FUNC0(task, NULL, NULL,
					totalram_pages + total_swap_pages);
	FUNC3(&tasklist_lock);
	return FUNC4(buffer, "%lu\n", points);
}