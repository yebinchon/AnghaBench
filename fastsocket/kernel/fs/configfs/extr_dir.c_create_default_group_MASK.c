#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qstr {int /*<<< orphan*/  len; scalar_t__ name; int /*<<< orphan*/  hash; } ;
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int /*<<< orphan*/  s_type; } ;
struct TYPE_3__ {scalar_t__ ci_name; scalar_t__ ci_namebuf; struct dentry* ci_dentry; } ;
struct config_group {TYPE_1__ cg_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGFS_USET_DEFAULT ; 
 int ENOMEM ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC2 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct config_group *parent_group,
				struct config_group *group)
{
	int ret;
	struct qstr name;
	struct configfs_dirent *sd;
	/* We trust the caller holds a reference to parent */
	struct dentry *child, *parent = parent_group->cg_item.ci_dentry;

	if (!group->cg_item.ci_name)
		group->cg_item.ci_name = group->cg_item.ci_namebuf;
	name.name = group->cg_item.ci_name;
	name.len = FUNC6(name.name);
	name.hash = FUNC5(name.name, name.len);

	ret = -ENOMEM;
	child = FUNC2(parent, &name);
	if (child) {
		FUNC1(child, NULL);

		ret = FUNC0(&parent_group->cg_item,
					    &group->cg_item, child);
		if (!ret) {
			sd = child->d_fsdata;
			sd->s_type |= CONFIGFS_USET_DEFAULT;
		} else {
			FUNC3(child);
			FUNC4(child);
		}
	}

	return ret;
}