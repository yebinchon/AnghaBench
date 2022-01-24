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
struct ufs_super_block_third {int dummy; } ;
struct ufs_super_block_first {int /*<<< orphan*/  fs_time; } ;
struct ufs_sb_private_info {int dummy; } ;
struct super_block {int s_flags; scalar_t__ s_dirt; } ;
struct TYPE_2__ {unsigned int s_flags; unsigned int s_mount_opt; struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  ONERROR_LOCK ; 
 scalar_t__ UFS_FSOK ; 
 unsigned int UFS_MOUNT_UFSTYPE ; 
 unsigned int UFS_MOUNT_UFSTYPE_44BSD ; 
 unsigned int UFS_MOUNT_UFSTYPE_SUN ; 
 unsigned int UFS_MOUNT_UFSTYPE_SUNOS ; 
 unsigned int UFS_MOUNT_UFSTYPE_SUNx86 ; 
 unsigned int UFS_MOUNT_UFSTYPE_UFS2 ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 unsigned int UFS_ST_MASK ; 
 unsigned int UFS_ST_SUN ; 
 unsigned int UFS_ST_SUNOS ; 
 unsigned int UFS_ST_SUNx86 ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_sb_private_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct ufs_super_block_first* FUNC8 (struct ufs_sb_private_info*) ; 
 struct ufs_super_block_third* FUNC9 (struct ufs_sb_private_info*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,struct ufs_super_block_first*,struct ufs_super_block_third*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*) ; 

__attribute__((used)) static int FUNC18 (struct super_block *sb, int *mount_flags, char *data)
{
	struct ufs_sb_private_info * uspi;
	struct ufs_super_block_first * usb1;
	struct ufs_super_block_third * usb3;
	unsigned new_mount_opt, ufstype;
	unsigned flags;

	FUNC5();
	FUNC6(sb);
	uspi = FUNC0(sb)->s_uspi;
	flags = FUNC0(sb)->s_flags;
	usb1 = FUNC8(uspi);
	usb3 = FUNC9(uspi);
	
	/*
	 * Allow the "check" option to be passed as a remount option.
	 * It is not possible to change ufstype option during remount
	 */
	ufstype = FUNC0(sb)->s_mount_opt & UFS_MOUNT_UFSTYPE;
	new_mount_opt = 0;
	FUNC15 (new_mount_opt, ONERROR_LOCK);
	if (!FUNC11 (data, &new_mount_opt)) {
		FUNC17(sb);
		FUNC16();
		return -EINVAL;
	}
	if (!(new_mount_opt & UFS_MOUNT_UFSTYPE)) {
		new_mount_opt |= ufstype;
	} else if ((new_mount_opt & UFS_MOUNT_UFSTYPE) != ufstype) {
		FUNC7("ufstype can't be changed during remount\n");
		FUNC17(sb);
		FUNC16();
		return -EINVAL;
	}

	if ((*mount_flags & MS_RDONLY) == (sb->s_flags & MS_RDONLY)) {
		FUNC0(sb)->s_mount_opt = new_mount_opt;
		FUNC17(sb);
		FUNC16();
		return 0;
	}
	
	/*
	 * fs was mouted as rw, remounting ro
	 */
	if (*mount_flags & MS_RDONLY) {
		FUNC12(sb);
		usb1->fs_time = FUNC2(sb, FUNC4());
		if ((flags & UFS_ST_MASK) == UFS_ST_SUN
		  || (flags & UFS_ST_MASK) == UFS_ST_SUNOS
		  || (flags & UFS_ST_MASK) == UFS_ST_SUNx86) 
			FUNC14(sb, usb1, usb3,
				UFS_FSOK - FUNC3(sb, usb1->fs_time));
		FUNC10 (FUNC1(uspi));
		sb->s_dirt = 0;
		sb->s_flags |= MS_RDONLY;
	} else {
	/*
	 * fs was mounted as ro, remounting rw
	 */
#ifndef CONFIG_UFS_FS_WRITE
		FUNC7("ufs was compiled with read-only support, "
		"can't be mounted as read-write\n");
		FUNC17(sb);
		FUNC16();
		return -EINVAL;
#else
		if (ufstype != UFS_MOUNT_UFSTYPE_SUN && 
		    ufstype != UFS_MOUNT_UFSTYPE_SUNOS &&
		    ufstype != UFS_MOUNT_UFSTYPE_44BSD &&
		    ufstype != UFS_MOUNT_UFSTYPE_SUNx86 &&
		    ufstype != UFS_MOUNT_UFSTYPE_UFS2) {
			printk("this ufstype is read-only supported\n");
			unlock_super(sb);
			unlock_kernel();
			return -EINVAL;
		}
		if (!ufs_read_cylinder_structures(sb)) {
			printk("failed during remounting\n");
			unlock_super(sb);
			unlock_kernel();
			return -EPERM;
		}
		sb->s_flags &= ~MS_RDONLY;
#endif
	}
	FUNC0(sb)->s_mount_opt = new_mount_opt;
	FUNC17(sb);
	FUNC16();
	return 0;
}