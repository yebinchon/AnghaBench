#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct the_nilfs {int /*<<< orphan*/  ns_mount_mutex; int /*<<< orphan*/  ns_super_sem; TYPE_2__* ns_current; } ;
struct super_block {int s_flags; int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_id; int /*<<< orphan*/  s_root; } ;
struct nilfs_super_data {int flags; struct super_block* bdev; scalar_t__ sbi; scalar_t__ cno; } ;
struct file_system_type {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_super; } ;
struct TYPE_3__ {int s_flags; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 int MS_ACTIVE ; 
 int MS_RDONLY ; 
 int MS_VERBOSE ; 
 int FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct the_nilfs* FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct super_block*,void*,int,struct the_nilfs*) ; 
 scalar_t__ FUNC11 (struct the_nilfs*,int,scalar_t__) ; 
 scalar_t__ FUNC12 (char*,struct nilfs_super_data*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  nilfs_set_bdev_super ; 
 int /*<<< orphan*/  nilfs_test_bdev_super ; 
 struct super_block* FUNC14 (char const*,int,struct file_system_type*) ; 
 int /*<<< orphan*/  FUNC15 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct super_block* FUNC17 (struct file_system_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nilfs_super_data*) ; 
 int /*<<< orphan*/  FUNC18 (struct vfsmount*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC22(struct file_system_type *fs_type, int flags,
	     const char *dev_name, void *data, struct vfsmount *mnt)
{
	struct nilfs_super_data sd;
	struct super_block *s;
	struct the_nilfs *nilfs;
	int err, need_to_close = 1;

	sd.bdev = FUNC14(dev_name, flags, fs_type);
	if (FUNC0(sd.bdev))
		return FUNC1(sd.bdev);

	/*
	 * To get mount instance using sget() vfs-routine, NILFS needs
	 * much more information than normal filesystems to identify mount
	 * instance.  For snapshot mounts, not only a mount type (ro-mount
	 * or rw-mount) but also a checkpoint number is required.
	 */
	sd.cno = 0;
	sd.flags = flags;
	if (FUNC12((char *)data, &sd)) {
		err = -EINVAL;
		goto failed;
	}

	nilfs = FUNC7(sd.bdev);
	if (!nilfs) {
		err = -ENOMEM;
		goto failed;
	}

	FUNC8(&nilfs->ns_mount_mutex);

	if (!sd.cno) {
		/*
		 * Check if an exclusive mount exists or not.
		 * Snapshot mounts coexist with a current mount
		 * (i.e. rw-mount or ro-mount), whereas rw-mount and
		 * ro-mount are mutually exclusive.
		 */
		FUNC6(&nilfs->ns_super_sem);
		if (nilfs->ns_current &&
		    ((nilfs->ns_current->s_super->s_flags ^ flags)
		     & MS_RDONLY)) {
			FUNC20(&nilfs->ns_super_sem);
			err = -EBUSY;
			goto failed_unlock;
		}
		FUNC20(&nilfs->ns_super_sem);
	}

	/*
	 * Find existing nilfs_sb_info struct
	 */
	sd.sbi = FUNC11(nilfs, !(flags & MS_RDONLY), sd.cno);

	/*
	 * Get super block instance holding the nilfs_sb_info struct.
	 * A new instance is allocated if no existing mount is present or
	 * existing instance has been unmounted.
	 */
	s = FUNC17(fs_type, nilfs_test_bdev_super, nilfs_set_bdev_super, &sd);
	if (sd.sbi)
		FUNC13(sd.sbi);

	if (FUNC0(s)) {
		err = FUNC1(s);
		goto failed_unlock;
	}

	if (!s->s_root) {
		char b[BDEVNAME_SIZE];

		/* New superblock instance created */
		s->s_flags = flags;
		FUNC19(s->s_id, FUNC2(sd.bdev, b), sizeof(s->s_id));
		FUNC16(s, FUNC3(sd.bdev));

		err = FUNC10(s, data, flags & MS_VERBOSE, nilfs);
		if (err)
			goto cancel_new;

		s->s_flags |= MS_ACTIVE;
		need_to_close = 0;
	}

	FUNC9(&nilfs->ns_mount_mutex);
	FUNC15(nilfs);
	if (need_to_close)
		FUNC4(sd.bdev, flags);
	FUNC18(mnt, s);
	return 0;

 failed_unlock:
	FUNC9(&nilfs->ns_mount_mutex);
	FUNC15(nilfs);
 failed:
	FUNC4(sd.bdev, flags);

	return err;

 cancel_new:
	/* Abandoning the newly allocated superblock */
	FUNC9(&nilfs->ns_mount_mutex);
	FUNC15(nilfs);
	FUNC21(&s->s_umount);
	FUNC5(s);
	/*
	 * deactivate_super() invokes close_bdev_exclusive().
	 * We must finish all post-cleaning before this call;
	 * put_nilfs() needs the block device.
	 */
	return err;
}