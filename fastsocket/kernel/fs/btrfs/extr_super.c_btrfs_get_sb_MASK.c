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
typedef  int /*<<< orphan*/  u64 ;
struct vfsmount {struct super_block* mnt_root; struct super_block* mnt_sb; } ;
struct super_block {int s_flags; int /*<<< orphan*/  s_id; scalar_t__ s_root; struct super_block* d_sb; } ;
struct file_system_type {int dummy; } ;
struct dentry {int s_flags; int /*<<< orphan*/  s_id; scalar_t__ s_root; struct dentry* d_sb; } ;
struct btrfs_fs_info {void* super_for_commit; void* super_copy; struct btrfs_fs_devices* fs_devices; } ;
struct btrfs_fs_devices {scalar_t__ rw_devices; struct block_device* latest_bdev; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {struct file_system_type* bdev_holder; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int BTRFS_SUPER_INFO_SIZE ; 
 int EACCES ; 
 int EBUSY ; 
 int ENOMEM ; 
 struct super_block* FUNC0 (int) ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int MS_RDONLY ; 
 int MS_SILENT ; 
 int FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_devices*) ; 
 int FUNC5 (struct super_block*,struct btrfs_fs_devices*,void*,int) ; 
 int FUNC6 (struct btrfs_fs_devices*,int /*<<< orphan*/ ,struct file_system_type*) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ,struct file_system_type*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct btrfs_fs_devices**) ; 
 TYPE_1__* FUNC8 (struct super_block*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,struct file_system_type*,struct btrfs_fs_devices**) ; 
 int /*<<< orphan*/  btrfs_set_super ; 
 int /*<<< orphan*/  btrfs_test_super ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_fs_info*) ; 
 struct super_block* FUNC12 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ) ; 
 struct super_block* FUNC15 (char*,int,char const*,void*) ; 
 struct super_block* FUNC16 (struct file_system_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC18(struct file_system_type *fs_type, int flags,
		const char *device_name, void *data, struct vfsmount *mnt)
{
	struct block_device *bdev = NULL;
	struct super_block *s;
	struct dentry *root;
	struct btrfs_fs_devices *fs_devices = NULL;
	struct btrfs_fs_info *fs_info = NULL;
	fmode_t mode = FMODE_READ;
	char *subvol_name = NULL;
	u64 subvol_objectid = 0;
	u64 subvol_rootid = 0;
	int error = 0;

	if (!(flags & MS_RDONLY))
		mode |= FMODE_WRITE;

	error = FUNC7(data, mode, fs_type,
					  &subvol_name, &subvol_objectid,
					  &subvol_rootid, &fs_devices);
	if (error) {
		FUNC13(subvol_name);
		return error;
	}

	if (subvol_name) {
		root = FUNC15(subvol_name, flags, device_name, data);
		FUNC13(subvol_name);
		mnt->mnt_sb = root->d_sb;
		mnt->mnt_root = root;
		return 0;
	}

	error = FUNC9(device_name, mode, fs_type, &fs_devices);
	if (error)
		return error;

	/*
	 * Setup a dummy root and fs_info for test/set super.  This is because
	 * we don't actually fill this stuff out until open_ctree, but we need
	 * it for searching for existing supers, so this lets us do that and
	 * then open_ctree will properly initialize everything later.
	 */
	fs_info = FUNC14(sizeof(struct btrfs_fs_info), GFP_NOFS);
	if (!fs_info)
		return -ENOMEM;

	fs_info->fs_devices = fs_devices;

	fs_info->super_copy = FUNC14(BTRFS_SUPER_INFO_SIZE, GFP_NOFS);
	fs_info->super_for_commit = FUNC14(BTRFS_SUPER_INFO_SIZE, GFP_NOFS);
	if (!fs_info->super_copy || !fs_info->super_for_commit) {
		error = -ENOMEM;
		goto error_fs_info;
	}

	error = FUNC6(fs_devices, mode, fs_type);
	if (error)
		goto error_fs_info;

	if (!(flags & MS_RDONLY) && fs_devices->rw_devices == 0) {
		error = -EACCES;
		goto error_close_devices;
	}

	bdev = fs_devices->latest_bdev;
	s = FUNC16(fs_type, btrfs_test_super, btrfs_set_super, fs_info);
	if (FUNC1(s)) {
		error = FUNC2(s);
		goto error_close_devices;
	}

	if (s->s_root) {
		FUNC4(fs_devices);
		FUNC11(fs_info);
		if ((flags ^ s->s_flags) & MS_RDONLY)
			error = -EBUSY;
	} else {
		char b[BDEVNAME_SIZE];

		s->s_flags = flags;
		FUNC17(s->s_id, FUNC3(bdev, b), sizeof(s->s_id));
		FUNC8(s)->bdev_holder = fs_type;
		error = FUNC5(s, fs_devices, data,
					 flags & MS_SILENT ? 1 : 0);
	}

	root = !error ? FUNC12(s, subvol_objectid) : FUNC0(error);
	if (FUNC1(root))
		FUNC10(s);

	mnt->mnt_sb = s;
	mnt->mnt_root = root;

	return 0;

error_close_devices:
	FUNC4(fs_devices);
error_fs_info:
	FUNC11(fs_info);
	return error;
}