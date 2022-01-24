#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mutex {int dummy; } ;
struct module {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_parent; struct configfs_dirent* d_fsdata; } ;
struct TYPE_9__ {TYPE_1__* ci_type; } ;
struct TYPE_10__ {TYPE_2__ cg_item; } ;
struct configfs_subsystem {struct mutex su_mutex; TYPE_3__ su_group; } ;
struct configfs_dirent {int s_type; scalar_t__ s_dependent_count; } ;
struct config_item {TYPE_4__* ci_type; } ;
struct TYPE_13__ {scalar_t__ s_root; } ;
struct TYPE_12__ {struct configfs_subsystem* cg_subsys; } ;
struct TYPE_11__ {struct module* ct_owner; } ;
struct TYPE_8__ {struct module* ct_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONFIGFS_USET_DEFAULT ; 
 int CONFIGFS_USET_DIR ; 
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*,struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (struct config_item*,struct config_item*) ; 
 int /*<<< orphan*/  FUNC3 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct config_item*) ; 
 int FUNC6 (struct dentry*,struct mutex**) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 struct config_item* FUNC8 (struct dentry*) ; 
 TYPE_7__* configfs_sb ; 
 struct mutex configfs_symlink_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct module*) ; 
 int /*<<< orphan*/  FUNC10 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC11 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC14 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (struct config_item*) ; 

__attribute__((used)) static int FUNC17(struct inode *dir, struct dentry *dentry)
{
	struct config_item *parent_item;
	struct config_item *item;
	struct configfs_subsystem *subsys;
	struct configfs_dirent *sd;
	struct module *subsys_owner = NULL, *dead_item_owner = NULL;
	int ret;

	if (dentry->d_parent == configfs_sb->s_root)
		return -EPERM;

	sd = dentry->d_fsdata;
	if (sd->s_type & CONFIGFS_USET_DEFAULT)
		return -EPERM;

	/* Get a working ref until we have the child */
	parent_item = FUNC8(dentry->d_parent);
	subsys = FUNC14(parent_item)->cg_subsys;
	FUNC0(!subsys);

	if (!parent_item->ci_type) {
		FUNC3(parent_item);
		return -EINVAL;
	}

	/* configfs_mkdir() shouldn't have allowed this */
	FUNC0(!subsys->su_group.cg_item.ci_type);
	subsys_owner = subsys->su_group.cg_item.ci_type->ct_owner;

	/*
	 * Ensure that no racing symlink() will make detach_prep() fail while
	 * the new link is temporarily attached
	 */
	do {
		struct mutex *wait_mutex;

		FUNC10(&configfs_symlink_mutex);
		FUNC12(&configfs_dirent_lock);
		/*
		 * Here's where we check for dependents.  We're protected by
		 * configfs_dirent_lock.
		 * If no dependent, atomically tag the item as dropping.
		 */
		ret = sd->s_dependent_count ? -EBUSY : 0;
		if (!ret) {
			ret = FUNC6(dentry, &wait_mutex);
			if (ret)
				FUNC7(dentry);
		}
		FUNC13(&configfs_dirent_lock);
		FUNC11(&configfs_symlink_mutex);

		if (ret) {
			if (ret != -EAGAIN) {
				FUNC3(parent_item);
				return ret;
			}

			/* Wait until the racing operation terminates */
			FUNC10(wait_mutex);
			FUNC11(wait_mutex);
		}
	} while (ret == -EAGAIN);

	/* Get a working ref for the duration of this function */
	item = FUNC8(dentry);

	/* Drop reference from above, item already holds one. */
	FUNC3(parent_item);

	if (item->ci_type)
		dead_item_owner = item->ci_type->ct_owner;

	if (sd->s_type & CONFIGFS_USET_DIR) {
		FUNC4(item);

		FUNC10(&subsys->su_mutex);
		FUNC1(parent_item, item);
		FUNC15(FUNC14(item));
	} else {
		FUNC5(item);

		FUNC10(&subsys->su_mutex);
		FUNC1(parent_item, item);
		FUNC16(item);
	}

	FUNC2(parent_item, item);
	FUNC11(&subsys->su_mutex);

	/* Drop our reference from above */
	FUNC3(item);

	FUNC9(dead_item_owner);
	FUNC9(subsys_owner);

	return 0;
}