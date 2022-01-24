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
struct dentry {TYPE_1__* d_inode; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_DEAD ; 
 int FUNC0 (struct config_item*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct config_item*) ; 

__attribute__((used)) static int FUNC6(struct config_item *parent_item,
				struct config_item *item,
				struct dentry *dentry)
{
	int ret;

	ret = FUNC0(item, dentry);
	if (!ret) {
		ret = FUNC5(item);
		if (ret) {
			/*
			 * We are going to remove an inode and its dentry but
			 * the VFS may already have hit and used them. Thus,
			 * we must lock them as rmdir() would.
			 */
			FUNC3(&dentry->d_inode->i_mutex);
			FUNC1(item);
			dentry->d_inode->i_flags |= S_DEAD;
			FUNC4(&dentry->d_inode->i_mutex);
			FUNC2(dentry);
		}
	}

	return ret;
}