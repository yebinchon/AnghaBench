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
struct vfsmount {int dummy; } ;
struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {int /*<<< orphan*/  fs_lock; int /*<<< orphan*/  type; } ;
struct autofs_info {int /*<<< orphan*/  expire_complete; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOFS_INF_EXPIRING ; 
 int EAGAIN ; 
 int /*<<< orphan*/  NFY_EXPIRE ; 
 struct autofs_info* FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct super_block*,struct vfsmount*,struct autofs_sb_info*,int) ; 
 struct dentry* FUNC2 (struct super_block*,struct vfsmount*,struct autofs_sb_info*,int) ; 
 int FUNC3 (struct autofs_sb_info*,struct dentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct super_block *sb, struct vfsmount *mnt,
			    struct autofs_sb_info *sbi, int when)
{
	struct dentry *dentry;
	int ret = -EAGAIN;

	if (FUNC4(sbi->type))
		dentry = FUNC1(sb, mnt, sbi, when);
	else
		dentry = FUNC2(sb, mnt, sbi, when);

	if (dentry) {
		struct autofs_info *ino = FUNC0(dentry);

		/* This is synchronous because it makes the daemon a
                   little easier */
		ret = FUNC3(sbi, dentry, NFY_EXPIRE);

		FUNC7(&sbi->fs_lock);
		ino->flags &= ~AUTOFS_INF_EXPIRING;
		FUNC5(&ino->expire_complete);
		FUNC8(&sbi->fs_lock);
		FUNC6(dentry);
	}

	return ret;
}