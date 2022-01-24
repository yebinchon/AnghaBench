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
struct vfsmount {int /*<<< orphan*/  mnt_list; int /*<<< orphan*/  mnt_expiry_mark; int /*<<< orphan*/  mnt_count; struct super_block* mnt_sb; } ;
struct super_block {int s_flags; int /*<<< orphan*/  s_umount; TYPE_1__* s_op; } ;
struct TYPE_8__ {TYPE_3__* fs; } ;
struct TYPE_6__ {struct vfsmount* mnt; } ;
struct TYPE_7__ {TYPE_2__ root; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* umount_begin ) (struct super_block*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MNT_DETACH ; 
 int MNT_EXPIRE ; 
 int MNT_FORCE ; 
 int MS_RDONLY ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* current ; 
 int FUNC2 (struct super_block*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  namespace_sem ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct vfsmount*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC9 (struct vfsmount*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  umount_list ; 
 int /*<<< orphan*/  FUNC13 (struct vfsmount*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC16(struct vfsmount *mnt, int flags)
{
	struct super_block *sb = mnt->mnt_sb;
	int retval;
	FUNC0(umount_list);

	retval = FUNC7(mnt, flags);
	if (retval)
		return retval;

	/*
	 * Allow userspace to request a mountpoint be expired rather than
	 * unmounting unconditionally. Unmount only happens if:
	 *  (1) the mark is already set (the mark is cleared by mntput())
	 *  (2) the usage count == 1 [parent vfsmount] + 1 [sys_umount]
	 */
	if (flags & MNT_EXPIRE) {
		if (mnt == current->fs->root.mnt ||
		    flags & (MNT_FORCE | MNT_DETACH))
			return -EINVAL;

		if (FUNC1(&mnt->mnt_count) != 2)
			return -EBUSY;

		if (!FUNC15(&mnt->mnt_expiry_mark, 1))
			return -EAGAIN;
	}

	/*
	 * If we may have to abort operations to get out of this
	 * mount, and they will themselves hold resources we must
	 * allow the fs to do things. In the Unix tradition of
	 * 'Gee thats tricky lets do it in userspace' the umount_begin
	 * might fail to complete on the first run through as other tasks
	 * must return, and the like. Thats for the mount program to worry
	 * about for the moment.
	 */

	if (flags & MNT_FORCE && sb->s_op->umount_begin) {
		sb->s_op->umount_begin(sb);
	}

	/*
	 * No sense to grab the lock for this test, but test itself looks
	 * somewhat bogus. Suggestions for better replacement?
	 * Ho-hum... In principle, we might treat that as umount + switch
	 * to rootfs. GC would eventually take care of the old vfsmount.
	 * Actually it makes sense, especially if rootfs would contain a
	 * /reboot - static binary that would close all descriptors and
	 * call reboot(9). Then init(8) could umount root and exec /reboot.
	 */
	if (mnt == current->fs->root.mnt && !(flags & MNT_DETACH)) {
		/*
		 * Special case for "unmounting" root ...
		 * we just try to remount it readonly.
		 */
		FUNC3(&sb->s_umount);
		if (!(sb->s_flags & MS_RDONLY))
			retval = FUNC2(sb, MS_RDONLY, NULL, 0);
		FUNC14(&sb->s_umount);
		return retval;
	}

	FUNC3(&namespace_sem);
	FUNC10(&vfsmount_lock);
	event++;

	if (!(flags & MNT_DETACH))
		FUNC9(mnt, &umount_list);

	retval = -EBUSY;
	if (flags & MNT_DETACH || !FUNC5(mnt, 2)) {
		if (!FUNC4(&mnt->mnt_list))
			FUNC13(mnt, 1, &umount_list);
		retval = 0;
	}
	FUNC11(&vfsmount_lock);
	if (retval)
		FUNC8(mnt);
	FUNC14(&namespace_sem);
	FUNC6(&umount_list);
	return retval;
}