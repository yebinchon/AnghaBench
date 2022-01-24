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
struct dentry {int dummy; } ;
struct configfs_symlink {int /*<<< orphan*/  sl_list; int /*<<< orphan*/  sl_target; } ;
struct configfs_dirent {int s_type; int /*<<< orphan*/  s_links; } ;
struct config_item {TYPE_1__* ci_dentry; } ;
struct TYPE_2__ {struct configfs_dirent* d_fsdata; } ;

/* Variables and functions */
 int CONFIGFS_USET_DROPPING ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int FUNC2 (struct configfs_symlink*,TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC4 (struct configfs_symlink*) ; 
 struct configfs_symlink* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct config_item *parent_item,
		       struct config_item *item,
		       struct dentry *dentry)
{
	struct configfs_dirent *target_sd = item->ci_dentry->d_fsdata;
	struct configfs_symlink *sl;
	int ret;

	ret = -ENOENT;
	if (!FUNC3(target_sd))
		goto out;
	ret = -ENOMEM;
	sl = FUNC5(sizeof(struct configfs_symlink), GFP_KERNEL);
	if (sl) {
		sl->sl_target = FUNC0(item);
		FUNC8(&configfs_dirent_lock);
		if (target_sd->s_type & CONFIGFS_USET_DROPPING) {
			FUNC9(&configfs_dirent_lock);
			FUNC1(item);
			FUNC4(sl);
			return -ENOENT;
		}
		FUNC6(&sl->sl_list, &target_sd->s_links);
		FUNC9(&configfs_dirent_lock);
		ret = FUNC2(sl, parent_item->ci_dentry,
					   dentry);
		if (ret) {
			FUNC8(&configfs_dirent_lock);
			FUNC7(&sl->sl_list);
			FUNC9(&configfs_dirent_lock);
			FUNC1(item);
			FUNC4(sl);
		}
	}

out:
	return ret;
}