#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_3__* i_sb; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/ * d_op; } ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; } ;
struct TYPE_9__ {struct btrfs_root* root; } ;
struct TYPE_8__ {int s_flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  cleanup_work_sem; int /*<<< orphan*/  subvol_srcu; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct inode*) ; 
 scalar_t__ BTRFS_INODE_ITEM_KEY ; 
 scalar_t__ BTRFS_NAME_LEN ; 
 scalar_t__ BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 struct inode* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  btrfs_dentry_operations ; 
 struct inode* FUNC4 (TYPE_3__*,struct btrfs_key*,struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,struct dentry*,struct btrfs_key*) ; 
 int FUNC6 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct btrfs_root*,struct inode*,struct dentry*,struct btrfs_key*,struct btrfs_root**) ; 
 struct inode* FUNC9 (TYPE_3__*,struct btrfs_key*,struct btrfs_root*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct inode *FUNC13(struct inode *dir, struct dentry *dentry)
{
	struct inode *inode;
	struct btrfs_root *root = FUNC0(dir)->root;
	struct btrfs_root *sub_root = root;
	struct btrfs_key location;
	int index;
	int ret;

	dentry->d_op = &btrfs_dentry_operations;

	if (dentry->d_name.len > BTRFS_NAME_LEN)
		return FUNC2(-ENAMETOOLONG);

	ret = FUNC5(dir, dentry, &location);

	if (ret < 0)
		return FUNC2(ret);

	if (location.objectid == 0)
		return NULL;

	if (location.type == BTRFS_INODE_ITEM_KEY) {
		inode = FUNC4(dir->i_sb, &location, root, NULL);
		return inode;
	}

	FUNC1(location.type != BTRFS_ROOT_ITEM_KEY);

	index = FUNC10(&root->fs_info->subvol_srcu);
	ret = FUNC8(root, dir, dentry,
				       &location, &sub_root);
	if (ret < 0) {
		if (ret != -ENOENT)
			inode = FUNC2(ret);
		else
			inode = FUNC9(dir->i_sb, &location, sub_root);
	} else {
		inode = FUNC4(dir->i_sb, &location, sub_root, NULL);
	}
	FUNC11(&root->fs_info->subvol_srcu, index);

	if (!FUNC3(inode) && root != sub_root) {
		FUNC7(&root->fs_info->cleanup_work_sem);
		if (!(inode->i_sb->s_flags & MS_RDONLY))
			ret = FUNC6(sub_root);
		FUNC12(&root->fs_info->cleanup_work_sem);
		if (ret)
			inode = FUNC2(ret);
	}

	return inode;
}