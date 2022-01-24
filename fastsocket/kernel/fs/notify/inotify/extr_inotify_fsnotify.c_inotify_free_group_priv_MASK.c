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
struct TYPE_3__ {TYPE_2__* user; int /*<<< orphan*/  idr; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  inotify_devs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  idr_callback ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct fsnotify_group *group)
{
	/* ideally the idr is empty and we won't hit the BUG in teh callback */
	FUNC3(&group->inotify_data.idr, idr_callback, group);
	FUNC4(&group->inotify_data.idr);
	FUNC2(&group->inotify_data.idr);
	FUNC0(&group->inotify_data.user->inotify_devs);
	FUNC1(group->inotify_data.user);
}