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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int d_flags; scalar_t__ d_time; TYPE_2__* d_inode; TYPE_1__* d_parent; } ;
struct autofs_sb_info {int /*<<< orphan*/  dirhash; } ;
struct autofs_dir_ent {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ AUTOFS_NEGATIVE_TIMEOUT ; 
 int DCACHE_AUTOFS_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct autofs_dir_ent*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct dentry*,int /*<<< orphan*/ ,struct autofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct dentry * dentry, struct nameidata *nd)
{
	struct inode * dir;
	struct autofs_sb_info *sbi;
	struct autofs_dir_ent *ent;
	int res;

	FUNC5();
	dir = dentry->d_parent->d_inode;
	sbi = FUNC2(dir->i_sb);

	/* Pending dentry */
	if (dentry->d_flags & DCACHE_AUTOFS_PENDING) {
		if (FUNC1(sbi))
			res = 1;
		else
			res = FUNC6(dentry, dir->i_sb, sbi);
		FUNC7();
		return res;
	}

	/* Negative dentry.. invalidate if "old" */
	if (!dentry->d_inode) {
		FUNC7();
		return (dentry->d_time - jiffies <= AUTOFS_NEGATIVE_TIMEOUT);
	}
		
	/* Check for a non-mountpoint directory */
	if (FUNC0(dentry->d_inode->i_mode) && !FUNC4(dentry)) {
		if (FUNC1(sbi))
			res = 1;
		else
			res = FUNC6(dentry, dir->i_sb, sbi);
		FUNC7();
		return res;
	}

	/* Update the usage list */
	if (!FUNC1(sbi)) {
		ent = (struct autofs_dir_ent *) dentry->d_time;
		if (ent)
			FUNC3(&sbi->dirhash,ent);
	}
	FUNC7();
	return 1;
}