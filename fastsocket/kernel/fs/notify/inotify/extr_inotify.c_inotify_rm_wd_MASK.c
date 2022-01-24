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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct inotify_watch {struct inode* inode; } ;
struct inotify_handle {int /*<<< orphan*/  mutex; int /*<<< orphan*/  idr; } ;
struct inode {int /*<<< orphan*/  inotify_mutex; struct super_block* i_sb; } ;

/* Variables and functions */
 int EINVAL ; 
 struct inotify_watch* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inotify_handle*,struct inotify_watch*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inotify_handle*,struct inotify_watch*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct inotify_watch*,int) ; 

int FUNC8(struct inotify_handle *ih, u32 wd)
{
	struct inotify_watch *watch;
	struct super_block *sb;
	struct inode *inode;
	int how;

	FUNC3(&ih->mutex);
	watch = FUNC0(&ih->idr, wd);
	if (FUNC6(!watch)) {
		FUNC4(&ih->mutex);
		return -EINVAL;
	}
	sb = watch->inode->i_sb;
	how = FUNC5(ih, watch);
	if (!how)
		return 0;

	inode = watch->inode;

	FUNC3(&inode->inotify_mutex);
	FUNC3(&ih->mutex);

	/* make sure that we did not race */
	if (FUNC2(FUNC0(&ih->idr, wd) == watch))
		FUNC1(ih, watch);

	FUNC4(&ih->mutex);
	FUNC4(&inode->inotify_mutex);
	FUNC7(watch, how);

	return 0;
}