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
struct ocfs2_inode_info {scalar_t__ ip_blkno; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_flags; } ;
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_1__ d_name; } ;

/* Variables and functions */
 int EACCES ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct ocfs2_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_MAYBE_ORPHANED ; 
 scalar_t__ OCFS2_MAX_FILENAME_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OI_LS_PARENT ; 
 struct dentry* FUNC4 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct inode*,struct dentry*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int FUNC9 (struct dentry*,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  ocfs2_dentry_ops ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC16(struct inode *dir, struct dentry *dentry,
				   struct nameidata *nd)
{
	int status;
	u64 blkno;
	struct inode *inode = NULL;
	struct dentry *ret;
	struct ocfs2_inode_info *oi;

	FUNC6("(0x%p, 0x%p, '%.*s')\n", dir, dentry,
		   dentry->d_name.len, dentry->d_name.name);

	if (dentry->d_name.len > OCFS2_MAX_FILENAME_LEN) {
		ret = FUNC0(-ENAMETOOLONG);
		goto bail;
	}

	FUNC5(0, "find name %.*s in directory %llu\n", dentry->d_name.len,
	     dentry->d_name.name, (unsigned long long)FUNC2(dir)->ip_blkno);

	status = FUNC11(dir, NULL, 0, OI_LS_PARENT);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC7(status);
		ret = FUNC0(status);
		goto bail;
	}

	status = FUNC13(dir, dentry->d_name.name,
					    dentry->d_name.len, &blkno);
	if (status < 0)
		goto bail_add;

	inode = FUNC10(FUNC3(dir->i_sb), blkno, 0, 0);
	if (FUNC1(inode)) {
		ret = FUNC0(-EACCES);
		goto bail_unlock;
	}

	oi = FUNC2(inode);
	/* Clear any orphaned state... If we were able to look up the
	 * inode from a directory, it certainly can't be orphaned. We
	 * might have the bad state from a node which intended to
	 * orphan this inode but crashed before it could commit the
	 * unlink. */
	FUNC14(&oi->ip_lock);
	oi->ip_flags &= ~OCFS2_INODE_MAYBE_ORPHANED;
	FUNC15(&oi->ip_lock);

bail_add:
	dentry->d_op = &ocfs2_dentry_ops;
	ret = FUNC4(inode, dentry);

	if (inode) {
		/*
		 * If d_splice_alias() finds a DCACHE_DISCONNECTED
		 * dentry, it will d_move() it on top of ourse. The
		 * return value will indicate this however, so in
		 * those cases, we switch them around for the locking
		 * code.
		 *
		 * NOTE: This dentry already has ->d_op set from
		 * ocfs2_get_parent() and ocfs2_get_dentry()
		 */
		if (ret)
			dentry = ret;

		status = FUNC9(dentry, inode,
						  FUNC2(dir)->ip_blkno);
		if (status) {
			FUNC7(status);
			ret = FUNC0(status);
			goto bail_unlock;
		}
	}

bail_unlock:
	/* Don't drop the cluster lock until *after* the d_add --
	 * unlink on another node will message us to remove that
	 * dentry under this lock so otherwise we can race this with
	 * the downconvert thread and have a stale dentry. */
	FUNC12(dir, 0);

bail:

	FUNC8(ret);

	return ret;
}