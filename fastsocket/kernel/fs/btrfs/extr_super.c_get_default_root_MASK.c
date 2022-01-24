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
typedef  void* u64 ;
struct super_block {TYPE_1__* s_root; } ;
struct inode {int /*<<< orphan*/  root_item; } ;
struct dentry {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  root_item; } ;
struct btrfs_path {int leave_spinning; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {void* offset; int /*<<< orphan*/  type; void* objectid; } ;
struct btrfs_fs_info {struct inode* fs_root; int /*<<< orphan*/  super_copy; struct inode* tree_root; } ;
struct btrfs_dir_item {int /*<<< orphan*/  root_item; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 void* BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_INODE_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_ROOT_ITEM_KEY ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct btrfs_path* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct inode*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 struct inode* FUNC6 (struct super_block*,struct btrfs_key*,struct inode*,int*) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ *,struct inode*,struct btrfs_path*,void*,char*,int,int /*<<< orphan*/ ) ; 
 struct inode* FUNC8 (struct btrfs_fs_info*,struct btrfs_key*) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC11 (struct super_block*) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC13 (struct inode*) ; 
 struct dentry* FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC16(struct super_block *sb,
				       u64 subvol_objectid)
{
	struct btrfs_fs_info *fs_info = FUNC11(sb);
	struct btrfs_root *root = fs_info->tree_root;
	struct btrfs_root *new_root;
	struct btrfs_dir_item *di;
	struct btrfs_path *path;
	struct btrfs_key location;
	struct inode *inode;
	u64 dir_id;
	int new = 0;

	/*
	 * We have a specific subvol we want to mount, just setup location and
	 * go look up the root.
	 */
	if (subvol_objectid) {
		location.objectid = subvol_objectid;
		location.type = BTRFS_ROOT_ITEM_KEY;
		location.offset = (u64)-1;
		goto find_root;
	}

	path = FUNC3();
	if (!path)
		return FUNC1(-ENOMEM);
	path->leave_spinning = 1;

	/*
	 * Find the "default" dir item which points to the root item that we
	 * will mount by default if we haven't been given a specific subvolume
	 * to mount.
	 */
	dir_id = FUNC12(fs_info->super_copy);
	di = FUNC7(NULL, root, path, dir_id, "default", 7, 0);
	if (FUNC2(di)) {
		FUNC5(path);
		return FUNC0(di);
	}
	if (!di) {
		/*
		 * Ok the default dir item isn't there.  This is weird since
		 * it's always been there, but don't freak out, just try and
		 * mount to root most subvolume.
		 */
		FUNC5(path);
		dir_id = BTRFS_FIRST_FREE_OBJECTID;
		new_root = fs_info->fs_root;
		goto setup_root;
	}

	FUNC4(path->nodes[0], di, &location);
	FUNC5(path);

find_root:
	new_root = FUNC8(fs_info, &location);
	if (FUNC2(new_root))
		return FUNC0(new_root);

	if (FUNC10(&new_root->root_item) == 0)
		return FUNC1(-ENOENT);

	dir_id = FUNC9(&new_root->root_item);
setup_root:
	location.objectid = dir_id;
	location.type = BTRFS_INODE_ITEM_KEY;
	location.offset = 0;

	inode = FUNC6(sb, &location, new_root, &new);
	if (FUNC2(inode))
		return FUNC0(inode);

	/*
	 * If we're just mounting the root most subvol put the inode and return
	 * a reference to the dentry.  We will have already gotten a reference
	 * to the inode in btrfs_fill_super so we're good to go.
	 */
	if (!new && sb->s_root->d_inode == inode) {
		FUNC15(inode);
		return FUNC14(sb->s_root);
	}

	return FUNC13(inode);
}