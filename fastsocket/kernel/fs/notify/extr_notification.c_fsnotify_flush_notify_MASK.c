#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fsnotify_group {int /*<<< orphan*/  notification_mutex; TYPE_1__* ops; } ;
struct fsnotify_event_private_data {int dummy; } ;
struct fsnotify_event {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_event_priv ) (struct fsnotify_event_private_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_event*) ; 
 struct fsnotify_event* FUNC2 (struct fsnotify_group*) ; 
 struct fsnotify_event_private_data* FUNC3 (struct fsnotify_group*,struct fsnotify_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fsnotify_event_private_data*) ; 

void FUNC9(struct fsnotify_group *group)
{
	struct fsnotify_event *event;
	struct fsnotify_event_private_data *priv;

	FUNC4(&group->notification_mutex);
	while (!FUNC0(group)) {
		event = FUNC2(group);
		/* if they don't implement free_event_priv they better not have attached any */
		if (group->ops->free_event_priv) {
			FUNC6(&event->lock);
			priv = FUNC3(group, event);
			FUNC7(&event->lock);
			if (priv)
				group->ops->free_event_priv(priv);
		}
		FUNC1(event); /* matches fsnotify_add_notify_event */
	}
	FUNC5(&group->notification_mutex);
}