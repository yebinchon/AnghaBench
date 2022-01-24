#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* user; int /*<<< orphan*/ * fa; scalar_t__ last_wd; int /*<<< orphan*/  idr; int /*<<< orphan*/  idr_lock; } ;
struct fsnotify_group {unsigned int max_events; TYPE_1__ inotify_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  inotify_devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMFILE ; 
 struct fsnotify_group* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INOTIFY_GROUP_NUM ; 
 scalar_t__ FUNC1 (struct fsnotify_group*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct fsnotify_group* FUNC3 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_group*) ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inotify_fsnotify_ops ; 
 int /*<<< orphan*/  inotify_grp_num ; 
 scalar_t__ inotify_max_user_instances ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fsnotify_group *FUNC8(unsigned int max_events)
{
	struct fsnotify_group *group;
	unsigned int grp_num;

	/* fsnotify_obtain_group took a reference to group, we put this when we kill the file in the end */
	grp_num = (INOTIFY_GROUP_NUM - FUNC2(&inotify_grp_num));
	group = FUNC3(grp_num, 0, &inotify_fsnotify_ops);
	if (FUNC1(group))
		return group;

	group->max_events = max_events;

	FUNC7(&group->inotify_data.idr_lock);
	FUNC6(&group->inotify_data.idr);
	group->inotify_data.last_wd = 0;
	group->inotify_data.fa = NULL;
	group->inotify_data.user = FUNC5();

	if (FUNC2(&group->inotify_data.user->inotify_devs) >
	    inotify_max_user_instances) {
		FUNC4(group);
		return FUNC0(-EMFILE);
	}

	return group;
}