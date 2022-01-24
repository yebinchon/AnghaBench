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
struct inode {int dummy; } ;
struct fsnotify_group {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int FUNC0 (struct fsnotify_group*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fsnotify_group*,struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fsnotify_group *group, struct inode *inode, u32 arg)
{
	int ret = 0;

retry:
	/* try to update and existing watch with the new arg */
	ret = FUNC1(group, inode, arg);
	/* no mark present, try to add a new one */
	if (ret == -ENOENT)
		ret = FUNC0(group, inode, arg);
	/*
	 * inotify_new_watch could race with another thread which did an
	 * inotify_new_watch between the update_existing and the add watch
	 * here, go back and try to update an existing mark again.
	 */
	if (ret == -EEXIST)
		goto retry;

	return ret;
}