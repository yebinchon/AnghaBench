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
struct inotify_event {int dummy; } ;
struct fsnotify_group {int dummy; } ;
struct fsnotify_event {scalar_t__ name_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct fsnotify_event* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct fsnotify_group*) ; 
 struct fsnotify_event* FUNC2 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsnotify_group*) ; 
 scalar_t__ FUNC4 (scalar_t__,size_t) ; 

__attribute__((used)) static struct fsnotify_event *FUNC5(struct fsnotify_group *group,
					    size_t count)
{
	size_t event_size = sizeof(struct inotify_event);
	struct fsnotify_event *event;

	if (FUNC1(group))
		return NULL;

	event = FUNC2(group);

	if (event->name_len)
		event_size += FUNC4(event->name_len + 1, event_size);

	if (event_size > count)
		return FUNC0(-EINVAL);

	/* held the notification_mutex the whole time, so this is the
	 * same event we peeked above */
	FUNC3(group);

	return event;
}