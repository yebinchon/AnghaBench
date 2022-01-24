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
typedef  int /*<<< orphan*/  u32 ;
struct path {int /*<<< orphan*/ * mnt; int /*<<< orphan*/ * dentry; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mnt; int /*<<< orphan*/ * dentry; } ;
struct fsnotify_event {int data_type; int /*<<< orphan*/  mask; TYPE_1__ path; int /*<<< orphan*/ * inode; struct inode* to_tell; int /*<<< orphan*/  sync_cookie; int /*<<< orphan*/  file_name; int /*<<< orphan*/  name_len; } ;
struct file {struct path f_path; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  FSNOTIFY_EVENT_FILE 131 
#define  FSNOTIFY_EVENT_INODE 130 
#define  FSNOTIFY_EVENT_NONE 129 
#define  FSNOTIFY_EVENT_PATH 128 
 int /*<<< orphan*/  fsnotify_event_cachep ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_event*) ; 
 struct fsnotify_event* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fsnotify_event*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

struct fsnotify_event *FUNC7(struct inode *to_tell, __u32 mask, void *data,
					     int data_type, const char *name, u32 cookie,
					     gfp_t gfp)
{
	struct fsnotify_event *event;

	event = FUNC2(fsnotify_event_cachep, gfp);
	if (!event)
		return NULL;

	FUNC1(event);

	if (name) {
		event->file_name = FUNC4(name, gfp);
		if (!event->file_name) {
			FUNC3(fsnotify_event_cachep, event);
			return NULL;
		}
		event->name_len = FUNC6(event->file_name);
	}

	event->sync_cookie = cookie;
	event->to_tell = to_tell;

	switch (data_type) {
	case FSNOTIFY_EVENT_FILE: {
		struct file *file = data;
		struct path *path = &file->f_path;
		event->path.dentry = path->dentry;
		event->path.mnt = path->mnt;
		FUNC5(&event->path);
		event->data_type = FSNOTIFY_EVENT_PATH;
		break;
	}
	case FSNOTIFY_EVENT_PATH: {
		struct path *path = data;
		event->path.dentry = path->dentry;
		event->path.mnt = path->mnt;
		FUNC5(&event->path);
		event->data_type = FSNOTIFY_EVENT_PATH;
		break;
	}
	case FSNOTIFY_EVENT_INODE:
		event->inode = data;
		event->data_type = FSNOTIFY_EVENT_INODE;
		break;
	case FSNOTIFY_EVENT_NONE:
		event->inode = NULL;
		event->path.dentry = NULL;
		event->path.mnt = NULL;
		break;
	default:
		FUNC0();
	}

	event->mask = mask;

	return event;
}