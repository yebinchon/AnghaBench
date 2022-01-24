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
struct inotify_watch {int wd; } ;
struct inotify_handle {int /*<<< orphan*/  mutex; } ;
struct inode {int /*<<< orphan*/  inotify_mutex; } ;
typedef  int s32 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inotify_watch*) ; 
 struct inotify_watch* FUNC1 (struct inode*,struct inotify_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct inotify_watch*) ; 

s32 FUNC5(struct inotify_handle *ih, struct inode *inode,
		       struct inotify_watch **watchp)
{
	struct inotify_watch *old;
	int ret = -ENOENT;

	FUNC2(&inode->inotify_mutex);
	FUNC2(&ih->mutex);

	old = FUNC1(inode, ih);
	if (FUNC4(old)) {
		FUNC0(old); /* caller must put watch */
		*watchp = old;
		ret = old->wd;
	}

	FUNC3(&ih->mutex);
	FUNC3(&inode->inotify_mutex);

	return ret;
}