#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inotify_watch {int wd; TYPE_1__* inode; int /*<<< orphan*/  i_list; int /*<<< orphan*/  h_list; struct inotify_handle* ih; int /*<<< orphan*/  mask; } ;
struct inotify_handle {int /*<<< orphan*/  mutex; int /*<<< orphan*/  watches; } ;
typedef  int s32 ;
struct TYPE_3__ {int /*<<< orphan*/  inotify_watches; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inotify_handle*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct inotify_handle*,struct inotify_watch*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

s32 FUNC7(struct inotify_watch *old, struct inotify_watch *new)
{
	struct inotify_handle *ih = old->ih;
	int ret = 0;

	new->mask = old->mask;
	new->ih = ih;

	FUNC4(&ih->mutex);

	/* Initialize a new watch */
	ret = FUNC2(ih, new);
	if (FUNC6(ret))
		goto out;
	ret = new->wd;

	FUNC0(ih);

	new->inode = FUNC1(old->inode);

	FUNC3(&new->h_list, &ih->watches);
	FUNC3(&new->i_list, &old->inode->inotify_watches);
out:
	FUNC5(&ih->mutex);
	return ret;
}