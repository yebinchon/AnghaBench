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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; int /*<<< orphan*/  d_sb; } ;
struct autofs_sb_info {int /*<<< orphan*/  fs_lock; } ;
struct autofs_info {int flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int AUTOFS_INF_EXPIRING ; 
 int /*<<< orphan*/  FUNC0 (char*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EISDIR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct autofs_info* FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct dentry *dentry, bool mounting_here)
{
	struct autofs_sb_info *sbi = FUNC5(dentry->d_sb);
	struct autofs_info *ino = FUNC2(dentry);
	int status;

	FUNC0("dentry=%p %.*s",
		dentry, dentry->d_name.len, dentry->d_name.name);

	/* The daemon never waits. */
	if (FUNC4(sbi) || mounting_here) {
		if (!FUNC6(dentry))
			return -EISDIR;
		return 0;
	}

	/* Wait for pending expires */
	FUNC7(dentry);

	/*
	 * This dentry may be under construction so wait on mount
	 * completion.
	 */
	status = FUNC3(dentry);
	if (status)
		return status;

	FUNC9(&sbi->fs_lock);
	/*
	 * If the dentry has been selected for expire while we slept
	 * on the lock then it might go away. We'll deal with that in
	 * ->d_automount() and wait on a new mount if the expire
	 * succeeds or return here if it doesn't (since there's no
	 * mount to follow with a rootless multi-mount).
	 */
	if (!(ino->flags & AUTOFS_INF_EXPIRING)) {
		/*
		 * Any needed mounting has been completed and the path
		 * updated so check if this is a rootless multi-mount so
		 * we can avoid needless calls ->d_automount() and avoid
		 * an incorrect ELOOP error return.
		 */
		if ((!FUNC6(dentry) && !FUNC8(dentry)) ||
		    (dentry->d_inode && FUNC1(dentry->d_inode->i_mode)))
			status = -EISDIR;
	}
	FUNC10(&sbi->fs_lock);

	return status;
}