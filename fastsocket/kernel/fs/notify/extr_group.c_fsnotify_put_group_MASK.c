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
struct fsnotify_group {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  fsnotify_grp_mutex ; 
 int /*<<< orphan*/  fsnotify_grp_srcu ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct fsnotify_group *group)
{
	if (!FUNC1(&group->refcnt, &fsnotify_grp_mutex))
		return;

	/*
	 * OK, now we know that there's no other users *and* we hold mutex,
	 * so no new references will appear
	 */
	FUNC0(group);

	/*
	 * now it's off the list, so the only thing we might care about is
	 * srcu access....
	 */
	FUNC4(&fsnotify_grp_mutex);
	FUNC5(&fsnotify_grp_srcu);

	/* and now it is really dead. _Nothing_ could be seeing it */
	FUNC3();
	FUNC2(group);
}