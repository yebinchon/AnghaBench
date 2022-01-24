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
struct inotify_watch {int mask; int wd; } ;
struct inotify_handle {int /*<<< orphan*/  mutex; } ;
struct inode {int /*<<< orphan*/  inotify_mutex; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int IN_ALL_EVENTS ; 
 int IN_MASK_ADD ; 
 int IN_ONESHOT ; 
 struct inotify_watch* FUNC0 (struct inode*,struct inotify_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

s32 FUNC4(struct inotify_handle *ih, struct inode *inode,
			      u32 mask)
{
	struct inotify_watch *old;
	int mask_add = 0;
	int ret;

	if (mask & IN_MASK_ADD)
		mask_add = 1;

	/* don't allow invalid bits: we don't want flags set */
	mask &= IN_ALL_EVENTS | IN_ONESHOT;
	if (FUNC3(!mask))
		return -EINVAL;

	FUNC1(&inode->inotify_mutex);
	FUNC1(&ih->mutex);

	/*
	 * Handle the case of re-adding a watch on an (inode,ih) pair that we
	 * are already watching.  We just update the mask and return its wd.
	 */
	old = FUNC0(inode, ih);
	if (FUNC3(!old)) {
		ret = -ENOENT;
		goto out;
	}

	if (mask_add)
		old->mask |= mask;
	else
		old->mask = mask;
	ret = old->wd;
out:
	FUNC2(&ih->mutex);
	FUNC2(&inode->inotify_mutex);
	return ret;
}