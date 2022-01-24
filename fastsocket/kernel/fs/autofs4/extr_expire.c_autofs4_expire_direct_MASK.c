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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {unsigned long exp_timeout; int /*<<< orphan*/  fs_lock; } ;
struct autofs_info {int flags; int /*<<< orphan*/  expire_complete; } ;

/* Variables and functions */
 int AUTOFS_EXP_IMMEDIATE ; 
 int AUTOFS_INF_EXPIRING ; 
 int AUTOFS_INF_PENDING ; 
 struct autofs_info* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*,struct dentry*,unsigned long,int) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  now ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC7(struct super_block *sb,
				     struct vfsmount *mnt,
				     struct autofs_sb_info *sbi,
				     int how)
{
	unsigned long timeout;
	struct dentry *root = FUNC2(sb->s_root);
	int do_now = how & AUTOFS_EXP_IMMEDIATE;
	struct autofs_info *ino;

	if (!root)
		return NULL;

	now = jiffies;
	timeout = sbi->exp_timeout;

	FUNC5(&sbi->fs_lock);
	ino = FUNC0(root);
	/* No point expiring a pending mount */
	if (ino->flags & AUTOFS_INF_PENDING)
		goto out;
	if (!FUNC1(mnt, root, timeout, do_now)) {
		struct autofs_info *ino = FUNC0(root);
		ino->flags |= AUTOFS_INF_EXPIRING;
		FUNC4(&ino->expire_complete);
		FUNC6(&sbi->fs_lock);
		return root;
	}
out:
	FUNC6(&sbi->fs_lock);
	FUNC3(root);

	return NULL;
}