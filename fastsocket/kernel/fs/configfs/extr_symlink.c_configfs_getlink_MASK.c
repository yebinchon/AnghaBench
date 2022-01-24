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
struct dentry {struct dentry* d_parent; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 struct config_item* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct config_item*,struct config_item*,char*) ; 
 int /*<<< orphan*/  configfs_rename_sem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, char * path)
{
	struct config_item *item, *target_item;
	int error = 0;

	item = FUNC1(dentry->d_parent);
	if (!item)
		return -EINVAL;

	target_item = FUNC1(dentry);
	if (!target_item) {
		FUNC0(item);
		return -EINVAL;
	}

	FUNC3(&configfs_rename_sem);
	error = FUNC2(item, target_item, path);
	FUNC4(&configfs_rename_sem);

	FUNC0(item);
	FUNC0(target_item);
	return error;

}