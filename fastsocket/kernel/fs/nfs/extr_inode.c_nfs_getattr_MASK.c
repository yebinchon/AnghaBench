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
struct vfsmount {int mnt_flags; } ;
struct kstat {int /*<<< orphan*/  ino; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_mapping; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int cache_validity; } ;

/* Variables and functions */
 int MNT_NOATIME ; 
 int MNT_NODIRATIME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int NFS_INO_INVALID_ATIME ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct inode*) ; 

int FUNC10(struct vfsmount *mnt, struct dentry *dentry, struct kstat *stat)
{
	struct inode *inode = dentry->d_inode;
	int need_atime = FUNC1(inode)->cache_validity & NFS_INO_INVALID_ATIME;
	int err;

	/* Flush out writes to the server in order to update c/mtime.  */
	if (FUNC4(inode->i_mode)) {
		err = FUNC6(inode->i_mapping);
		if (err)
			goto out;
	}

	/*
	 * We may force a getattr if the user cares about atime.
	 *
	 * Note that we only have to check the vfsmount flags here:
	 *  - NFS always sets S_NOATIME by so checking it would give a
	 *    bogus result
	 *  - NFS never sets MS_NOATIME or MS_NODIRATIME so there is
	 *    no point in checking those.
	 */
 	if ((mnt->mnt_flags & MNT_NOATIME) ||
 	    ((mnt->mnt_flags & MNT_NODIRATIME) && FUNC3(inode->i_mode)))
		need_atime = 0;

	if (need_atime)
		err = FUNC5(FUNC2(inode), inode);
	else
		err = FUNC9(FUNC2(inode), inode);
	if (!err) {
		FUNC7(inode, stat);
		stat->ino = FUNC8(FUNC0(inode));
	}
out:
	return err;
}