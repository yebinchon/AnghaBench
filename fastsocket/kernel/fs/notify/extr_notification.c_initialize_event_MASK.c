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
struct TYPE_4__ {int /*<<< orphan*/ * mnt; int /*<<< orphan*/ * dentry; } ;
struct TYPE_3__ {int /*<<< orphan*/  event_list; int /*<<< orphan*/ * event; } ;
struct fsnotify_event {scalar_t__ sync_cookie; scalar_t__ name_len; int /*<<< orphan*/ * file_name; int /*<<< orphan*/ * to_tell; int /*<<< orphan*/  private_data_list; int /*<<< orphan*/  data_type; int /*<<< orphan*/ * inode; TYPE_2__ path; int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; TYPE_1__ holder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSNOTIFY_EVENT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fsnotify_event *event)
{
	event->holder.event = NULL;
	FUNC0(&event->holder.event_list);
	FUNC1(&event->refcnt, 1);

	FUNC2(&event->lock);

	event->path.dentry = NULL;
	event->path.mnt = NULL;
	event->inode = NULL;
	event->data_type = FSNOTIFY_EVENT_NONE;

	FUNC0(&event->private_data_list);

	event->to_tell = NULL;

	event->file_name = NULL;
	event->name_len = 0;

	event->sync_cookie = 0;
}