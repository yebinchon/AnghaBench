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
struct fsnotify_group {int /*<<< orphan*/  num_marks; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_group*) ; 

__attribute__((used)) static void FUNC3(struct fsnotify_group *group)
{
	/* clear all inode mark entries for this group */
	FUNC1(group);

	/* past the point of no return, matches the initial value of 1 */
	if (FUNC0(&group->num_marks))
		FUNC2(group);
}