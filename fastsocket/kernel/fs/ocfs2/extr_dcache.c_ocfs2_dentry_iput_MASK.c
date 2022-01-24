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
struct ocfs2_dentry_lock {scalar_t__ dl_count; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {int d_flags; int /*<<< orphan*/  d_sb; TYPE_1__ d_name; struct ocfs2_dentry_lock* d_fsdata; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 int /*<<< orphan*/  ML_ERROR ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ocfs2_dentry_lock*) ; 

__attribute__((used)) static void FUNC7(struct dentry *dentry, struct inode *inode)
{
	struct ocfs2_dentry_lock *dl = dentry->d_fsdata;

	if (!dl) {
		/*
		 * No dentry lock is ok if we're disconnected or
		 * unhashed.
		 */
		if (!(dentry->d_flags & DCACHE_DISCONNECTED) &&
		    !FUNC2(dentry)) {
			unsigned long long ino = 0ULL;
			if (inode)
				ino = (unsigned long long)FUNC0(inode)->ip_blkno;
			FUNC4(ML_ERROR, "Dentry is missing cluster lock. "
			     "inode: %llu, d_flags: 0x%x, d_name: %.*s\n",
			     ino, dentry->d_flags, dentry->d_name.len,
			     dentry->d_name.name);
		}

		goto out;
	}

	FUNC5(dl->dl_count == 0, "dentry: %.*s, count: %u\n",
			dentry->d_name.len, dentry->d_name.name,
			dl->dl_count);

	FUNC6(FUNC1(dentry->d_sb), dl);

out:
	FUNC3(inode);
}