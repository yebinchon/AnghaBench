#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qstr {int /*<<< orphan*/  len; scalar_t__ name; int /*<<< orphan*/  hash; } ;
struct dentry {int /*<<< orphan*/  d_fsdata; } ;
struct TYPE_8__ {scalar_t__ ci_name; scalar_t__ ci_namebuf; } ;
struct config_group {TYPE_4__ cg_item; } ;
struct configfs_subsystem {struct config_group su_group; } ;
struct configfs_dirent {int /*<<< orphan*/  s_element; } ;
struct TYPE_7__ {TYPE_2__* s_root; } ;
struct TYPE_6__ {TYPE_1__* d_inode; struct configfs_dirent* d_fsdata; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__* configfs_sb ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC5 (TYPE_2__*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct config_group*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct config_group*) ; 

int FUNC17(struct configfs_subsystem *subsys)
{
	int err;
	struct config_group *group = &subsys->su_group;
	struct qstr name;
	struct dentry *dentry;
	struct configfs_dirent *sd;

	err = FUNC2();
	if (err)
		return err;

	if (!group->cg_item.ci_name)
		group->cg_item.ci_name = group->cg_item.ci_namebuf;

	sd = configfs_sb->s_root->d_fsdata;
	FUNC9(FUNC15(sd->s_element), group);

	FUNC10(&configfs_sb->s_root->d_inode->i_mutex,
			I_MUTEX_PARENT);

	name.name = group->cg_item.ci_name;
	name.len = FUNC14(name.name);
	name.hash = FUNC8(name.name, name.len);

	err = -ENOMEM;
	dentry = FUNC5(configfs_sb->s_root, &name);
	if (dentry) {
		FUNC4(dentry, NULL);

		err = FUNC0(sd->s_element, &group->cg_item,
					    dentry);
		if (err) {
			FUNC6(dentry);
			FUNC7(dentry);
		} else {
			FUNC12(&configfs_dirent_lock);
			FUNC1(dentry->d_fsdata);
			FUNC13(&configfs_dirent_lock);
		}
	}

	FUNC11(&configfs_sb->s_root->d_inode->i_mutex);

	if (err) {
		FUNC16(group);
		FUNC3();
	}

	return err;
}