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
struct inotify_watch {int /*<<< orphan*/  inode; struct inotify_handle* ih; int /*<<< orphan*/  count; } ;
struct inotify_handle {TYPE_1__* in_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* destroy_watch ) (struct inotify_watch*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inotify_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct inotify_watch*) ; 

void FUNC4(struct inotify_watch *watch)
{
	if (FUNC0(&watch->count)) {
		struct inotify_handle *ih = watch->ih;

		FUNC1(watch->inode);
		ih->in_ops->destroy_watch(watch);
		FUNC2(ih);
	}
}