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
struct fsnotify_event {scalar_t__ data_type; int /*<<< orphan*/  file_name; int /*<<< orphan*/  private_data_list; int /*<<< orphan*/  path; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FSNOTIFY_EVENT_PATH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsnotify_event_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fsnotify_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct fsnotify_event *event)
{
	if (!event)
		return;

	if (FUNC1(&event->refcnt)) {
		if (event->data_type == FSNOTIFY_EVENT_PATH)
			FUNC5(&event->path);

		FUNC0(!FUNC4(&event->private_data_list));

		FUNC2(event->file_name);
		FUNC3(fsnotify_event_cachep, event);
	}
}