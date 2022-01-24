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
struct fsnotify_ops {int dummy; } ;
struct fsnotify_group {int on_group_list; unsigned int group_num; int /*<<< orphan*/  num_marks; int /*<<< orphan*/  group_list; struct fsnotify_ops const* ops; int /*<<< orphan*/  mark_entries; int /*<<< orphan*/  mark_lock; int /*<<< orphan*/  max_events; scalar_t__ q_len; int /*<<< orphan*/  notification_waitq; int /*<<< orphan*/  notification_list; int /*<<< orphan*/  notification_mutex; scalar_t__ mask; int /*<<< orphan*/  refcnt; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct fsnotify_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 struct fsnotify_group* FUNC4 (unsigned int,scalar_t__,struct fsnotify_ops const*) ; 
 int /*<<< orphan*/  fsnotify_groups ; 
 int /*<<< orphan*/  fsnotify_grp_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct fsnotify_group* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

struct fsnotify_group *FUNC14(unsigned int group_num, __u32 mask,
					     const struct fsnotify_ops *ops)
{
	struct fsnotify_group *group, *tgroup;

	/* very low use, simpler locking if we just always alloc */
	group = FUNC8(sizeof(struct fsnotify_group), GFP_KERNEL);
	if (!group)
		return FUNC0(-ENOMEM);

	FUNC3(&group->refcnt, 1);

	group->on_group_list = 0;
	group->group_num = group_num;
	group->mask = mask;

	FUNC10(&group->notification_mutex);
	FUNC1(&group->notification_list);
	FUNC7(&group->notification_waitq);
	group->q_len = 0;
	group->max_events = UINT_MAX;

	FUNC13(&group->mark_lock);
	FUNC3(&group->num_marks, 0);
	FUNC1(&group->mark_entries);

	group->ops = ops;

	FUNC11(&fsnotify_grp_mutex);
	tgroup = FUNC4(group_num, mask, ops);
	if (tgroup) {
		/* group already exists */
		FUNC12(&fsnotify_grp_mutex);
		/* destroy the new one we made */
		FUNC5(group);
		return tgroup;
	}

	/* group not found, add a new one */
	FUNC9(&group->group_list, &fsnotify_groups);
	group->on_group_list = 1;
	/* being on the fsnotify_groups list holds one num_marks */
	FUNC2(&group->num_marks);

	FUNC12(&fsnotify_grp_mutex);

	if (mask)
		FUNC6();

	return group;
}