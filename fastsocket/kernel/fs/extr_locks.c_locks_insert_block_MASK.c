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
struct file_lock {int /*<<< orphan*/  fl_link; struct file_lock* fl_next; int /*<<< orphan*/  fl_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct file_lock*) ; 
 int /*<<< orphan*/  blocked_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct file_lock *blocker, 
			       struct file_lock *waiter)
{
	FUNC0(!FUNC4(&waiter->fl_block));
	FUNC3(&waiter->fl_block, &blocker->fl_block);
	waiter->fl_next = blocker;
	if (FUNC1(blocker))
		FUNC2(&waiter->fl_link, &blocked_list);
}