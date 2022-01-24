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
struct super_block {int s_time_gran; int /*<<< orphan*/  s_flags; struct dentry* s_root; int /*<<< orphan*/  s_xattr; int /*<<< orphan*/ * s_export_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_maxbytes; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct btrfs_key {scalar_t__ offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_root; int /*<<< orphan*/  fs_root; } ;
struct btrfs_fs_devices {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_INODE_ITEM_KEY ; 
 int /*<<< orphan*/  BTRFS_SUPER_MAGIC ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  MS_ACTIVE ; 
 int /*<<< orphan*/  MS_I_VERSION ; 
 int /*<<< orphan*/  MS_POSIXACL ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  btrfs_export_ops ; 
 struct inode* FUNC2 (struct super_block*,struct btrfs_key*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  btrfs_super_ops ; 
 int /*<<< orphan*/  btrfs_xattr_handlers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct super_block*,struct btrfs_fs_devices*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,void*) ; 

__attribute__((used)) static int FUNC10(struct super_block *sb,
			    struct btrfs_fs_devices *fs_devices,
			    void *data, int silent)
{
	struct inode *inode;
	struct dentry *root_dentry;
	struct btrfs_fs_info *fs_info = FUNC3(sb);
	struct btrfs_key key;
	int err;

	sb->s_maxbytes = MAX_LFS_FILESIZE;
	sb->s_magic = BTRFS_SUPER_MAGIC;
	sb->s_op = &btrfs_super_ops;
	sb->s_export_op = &btrfs_export_ops;
	sb->s_xattr = btrfs_xattr_handlers;
	sb->s_time_gran = 1;
#ifdef CONFIG_BTRFS_FS_POSIX_ACL
	sb->s_flags |= MS_POSIXACL;
#endif
	sb->s_flags |= MS_I_VERSION;
	err = FUNC7(sb, fs_devices, (char *)data);
	if (err) {
		FUNC8("btrfs: open_ctree failed\n");
		return err;
	}

	key.objectid = BTRFS_FIRST_FREE_OBJECTID;
	key.type = BTRFS_INODE_ITEM_KEY;
	key.offset = 0;
	inode = FUNC2(sb, &key, fs_info->fs_root, NULL);
	if (FUNC0(inode)) {
		err = FUNC1(inode);
		goto fail_close;
	}

	root_dentry = FUNC5(inode);
	if (!root_dentry) {
		FUNC6(inode);
		err = -ENOMEM;
		goto fail_close;
	}

	sb->s_root = root_dentry;

	FUNC9(sb, data);
	sb->s_flags |= MS_ACTIVE;
	return 0;

fail_close:
	FUNC4(fs_info->tree_root);
	return err;
}