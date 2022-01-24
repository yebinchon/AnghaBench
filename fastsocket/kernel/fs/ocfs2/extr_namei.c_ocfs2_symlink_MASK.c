#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct ocfs2_super {TYPE_4__* sb; } ;
struct ocfs2_security_xattr_info {int enable; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct TYPE_7__ {scalar_t__ i_symlink; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_blkno; TYPE_1__ id2; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {char const* i_mode; scalar_t__ i_blocks; int /*<<< orphan*/ * i_op; scalar_t__ i_rdev; struct super_block* i_sb; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_3__ d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_11__ {int /*<<< orphan*/  ip_blkno; } ;
struct TYPE_10__ {TYPE_2__* dq_op; } ;
struct TYPE_8__ {scalar_t__ (* alloc_inode ) (struct inode*,int) ;} ;

/* Variables and functions */
 int EDQUOT ; 
 int EINTR ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 scalar_t__ NO_QUOTA ; 
 TYPE_6__* FUNC1 (struct inode*) ; 
 struct ocfs2_super* FUNC2 (struct super_block*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct inode*,struct dentry*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct dentry*,struct inode*,int /*<<< orphan*/ ,struct buffer_head*,struct ocfs2_dir_lookup_result*) ; 
 int FUNC18 (struct ocfs2_super*,struct inode*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC19 (struct inode*,struct ocfs2_security_xattr_info*,int*,int*,struct ocfs2_alloc_context**) ; 
 int FUNC20 (struct super_block*) ; 
 int FUNC21 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC24 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,char const*) ; 
 int FUNC25 (struct dentry*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_dentry_ops ; 
 int FUNC26 (struct super_block*) ; 
 int /*<<< orphan*/  ocfs2_fast_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC27 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC28 (struct ocfs2_dir_lookup_result*) ; 
 struct inode* FUNC29 (struct inode*,int) ; 
 int FUNC30 (struct inode*,struct inode*,struct ocfs2_security_xattr_info*) ; 
 int FUNC31 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_security_xattr_info*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*) ; 
 int FUNC33 (struct inode*,struct buffer_head**,int) ; 
 scalar_t__ FUNC34 (struct inode*) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*,int) ; 
 int FUNC36 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC37 (struct ocfs2_super*,struct inode*,struct inode*,int /*<<< orphan*/ ,struct buffer_head**,struct buffer_head*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*) ; 
 int FUNC38 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC39 (struct ocfs2_dinode*) ; 
 int FUNC40 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int FUNC41 (struct ocfs2_super*,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/ * FUNC42 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  ocfs2_symlink_inode_operations ; 
 scalar_t__ FUNC43 (TYPE_4__*) ; 
 int FUNC44 (char const*) ; 
 scalar_t__ FUNC45 (struct inode*,int) ; 
 scalar_t__ FUNC46 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct inode*) ; 
 int /*<<< orphan*/  FUNC48 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC49(struct inode *dir,
			 struct dentry *dentry,
			 const char *symname)
{
	int status, l, credits;
	u64 newsize;
	struct ocfs2_super *osb = NULL;
	struct inode *inode = NULL;
	struct super_block *sb;
	struct buffer_head *new_fe_bh = NULL;
	struct buffer_head *parent_fe_bh = NULL;
	struct ocfs2_dinode *fe = NULL;
	struct ocfs2_dinode *dirfe;
	handle_t *handle = NULL;
	struct ocfs2_alloc_context *inode_ac = NULL;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_alloc_context *xattr_ac = NULL;
	int want_clusters = 0;
	int xattr_credits = 0;
	struct ocfs2_security_xattr_info si = {
		.enable = 1,
	};
	int did_quota = 0, did_quota_inode = 0;
	struct ocfs2_dir_lookup_result lookup = { NULL, };

	FUNC14("(0x%p, 0x%p, symname='%s' actual='%.*s')\n", dir,
		   dentry, symname, dentry->d_name.len, dentry->d_name.name);

	sb = dir->i_sb;
	osb = FUNC2(sb);

	l = FUNC44(symname) + 1;

	credits = FUNC20(sb);

	/* lock the parent directory */
	status = FUNC33(dir, &parent_fe_bh, 1);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC15(status);
		return status;
	}

	dirfe = (struct ocfs2_dinode *) parent_fe_bh->b_data;
	if (!FUNC39(dirfe)) {
		/* can't make a file in a deleted directory. */
		status = -ENOENT;
		goto bail;
	}

	status = FUNC21(dir, dentry->d_name.name,
					   dentry->d_name.len);
	if (status)
		goto bail;

	status = FUNC38(osb, dir, parent_fe_bh,
					      dentry->d_name.name,
					      dentry->d_name.len, &lookup);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	status = FUNC41(osb, &inode_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC15(status);
		goto bail;
	}

	inode = FUNC29(dir, S_IFLNK | S_IRWXUGO);
	if (!inode) {
		status = -ENOMEM;
		FUNC15(status);
		goto bail;
	}

	/* get security xattr */
	status = FUNC30(inode, dir, &si);
	if (status) {
		if (status == -EOPNOTSUPP)
			si.enable = 0;
		else {
			FUNC15(status);
			goto bail;
		}
	}

	/* calculate meta data/clusters for setting security xattr */
	if (si.enable) {
		status = FUNC19(dir, &si, &want_clusters,
						  &xattr_credits, &xattr_ac);
		if (status < 0) {
			FUNC15(status);
			goto bail;
		}
	}

	/* don't reserve bitmap space for fast symlinks. */
	if (l > FUNC26(sb))
		want_clusters += 1;

	status = FUNC40(osb, want_clusters, &data_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC15(status);
		goto bail;
	}

	handle = FUNC42(osb, credits + xattr_credits);
	if (FUNC0(handle)) {
		status = FUNC3(handle);
		handle = NULL;
		FUNC15(status);
		goto bail;
	}

	/* We don't use standard VFS wrapper because we don't want vfs_dq_init
	 * to be called. */
	if (FUNC43(osb->sb) &&
	    osb->sb->dq_op->alloc_inode(inode, 1) == NO_QUOTA) {
		status = -EDQUOT;
		goto bail;
	}
	did_quota_inode = 1;

	FUNC14("(0x%p, 0x%p, %d, '%.*s')\n", dir, dentry,
		   inode->i_mode, dentry->d_name.len,
		   dentry->d_name.name);

	status = FUNC37(osb, dir, inode,
				    0, &new_fe_bh, parent_fe_bh, handle,
				    inode_ac);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	fe = (struct ocfs2_dinode *) new_fe_bh->b_data;
	inode->i_rdev = 0;
	newsize = l - 1;
	if (l > FUNC26(sb)) {
		u32 offset = 0;

		inode->i_op = &ocfs2_symlink_inode_operations;
		if (FUNC46(inode,
		    FUNC22(osb->sb, 1))) {
			status = -EDQUOT;
			goto bail;
		}
		did_quota = 1;
		status = FUNC18(osb, inode, &offset, 1, 0,
					      new_fe_bh,
					      handle, data_ac, NULL,
					      NULL);
		if (status < 0) {
			if (status != -ENOSPC && status != -EINTR) {
				FUNC13(ML_ERROR,
				     "Failed to extend file to %llu\n",
				     (unsigned long long)newsize);
				FUNC15(status);
				status = -ENOSPC;
			}
			goto bail;
		}
		FUNC7(inode, newsize);
		inode->i_blocks = FUNC34(inode);
	} else {
		inode->i_op = &ocfs2_fast_symlink_inode_operations;
		FUNC12((char *) fe->id2.i_symlink, symname, l);
		FUNC7(inode, newsize);
		inode->i_blocks = 0;
	}

	status = FUNC36(handle, inode, new_fe_bh);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	if (!FUNC32(inode)) {
		status = FUNC24(osb, handle, inode,
						   symname);
		if (status < 0) {
			FUNC15(status);
			goto bail;
		}
	}

	if (si.enable) {
		status = FUNC31(handle, inode, new_fe_bh, &si,
						 xattr_ac, data_ac);
		if (status < 0) {
			FUNC15(status);
			goto bail;
		}
	}

	status = FUNC17(handle, dentry, inode,
				 FUNC11(fe->i_blkno), parent_fe_bh,
				 &lookup);
	if (status < 0) {
		FUNC15(status);
		goto bail;
	}

	status = FUNC25(dentry, inode, FUNC1(dir)->ip_blkno);
	if (status) {
		FUNC15(status);
		goto bail;
	}

	FUNC8(inode);
	dentry->d_op = &ocfs2_dentry_ops;
	FUNC6(dentry, inode);
bail:
	if (status < 0 && did_quota)
		FUNC48(inode,
					FUNC22(osb->sb, 1));
	if (status < 0 && did_quota_inode)
		FUNC47(inode);
	if (handle)
		FUNC23(osb, handle);

	FUNC35(dir, 1);

	FUNC4(new_fe_bh);
	FUNC4(parent_fe_bh);
	FUNC10(si.name);
	FUNC10(si.value);
	FUNC28(&lookup);
	if (inode_ac)
		FUNC27(inode_ac);
	if (data_ac)
		FUNC27(data_ac);
	if (xattr_ac)
		FUNC27(xattr_ac);
	if ((status < 0) && inode) {
		FUNC5(inode);
		FUNC9(inode);
	}

	FUNC16(status);

	return status;
}