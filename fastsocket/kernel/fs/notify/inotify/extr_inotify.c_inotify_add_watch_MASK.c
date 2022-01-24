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
typedef  int u32 ;
struct inotify_watch {int mask; int wd; int /*<<< orphan*/  i_list; int /*<<< orphan*/  h_list; int /*<<< orphan*/  inode; struct inotify_handle* ih; } ;
struct inotify_handle {int /*<<< orphan*/  mutex; int /*<<< orphan*/  watches; } ;
struct inode {int /*<<< orphan*/  inotify_mutex; int /*<<< orphan*/  inotify_watches; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 int IN_ALL_EVENTS ; 
 int IN_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct inotify_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inotify_handle*,struct inotify_watch*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 scalar_t__ FUNC8 (int) ; 

s32 FUNC9(struct inotify_handle *ih, struct inotify_watch *watch,
		      struct inode *inode, u32 mask)
{
	int ret = 0;
	int newly_watched;

	/* don't allow invalid bits: we don't want flags set */
	mask &= IN_ALL_EVENTS | IN_ONESHOT;
	if (FUNC8(!mask))
		return -EINVAL;
	watch->mask = mask;

	FUNC5(&inode->inotify_mutex);
	FUNC5(&ih->mutex);

	/* Initialize a new watch */
	ret = FUNC2(ih, watch);
	if (FUNC8(ret))
		goto out;
	ret = watch->wd;

	/* save a reference to handle and bump the count to make it official */
	FUNC0(ih);
	watch->ih = ih;

	/*
	 * Save a reference to the inode and bump the ref count to make it
	 * official.  We hold a reference to nameidata, which makes this safe.
	 */
	watch->inode = FUNC1(inode);

	/* Add the watch to the handle's and the inode's list */
	newly_watched = !FUNC3(inode);
	FUNC4(&watch->h_list, &ih->watches);
	FUNC4(&watch->i_list, &inode->inotify_watches);
	/*
	 * Set child flags _after_ adding the watch, so there is no race
	 * windows where newly instantiated children could miss their parent's
	 * watched flag.
	 */
	if (newly_watched)
		FUNC7(inode, 1);

out:
	FUNC6(&ih->mutex);
	FUNC6(&inode->inotify_mutex);
	return ret;
}