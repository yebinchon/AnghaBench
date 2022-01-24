#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {TYPE_3__* sb; } ;
struct ocfs2_security_xattr_info {int enable; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {scalar_t__ i_nlink; int i_mode; int /*<<< orphan*/  i_sb; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {int /*<<< orphan*/ * d_op; TYPE_2__ d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ dev_t ;
struct TYPE_9__ {int /*<<< orphan*/  ip_blkno; } ;
struct TYPE_8__ {TYPE_1__* dq_op; } ;
struct TYPE_6__ {scalar_t__ (* alloc_inode ) (struct inode*,int) ;} ;

/* Variables and functions */
 int EDQUOT ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NO_QUOTA ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,struct inode*,struct dentry*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct dentry*,struct inode*,int /*<<< orphan*/ ,struct buffer_head*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_dinode*,int) ; 
 int FUNC19 (struct inode*,struct buffer_head*,int,struct ocfs2_security_xattr_info*,int*,int*,int*) ; 
 int FUNC20 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC22 (struct dentry*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_dentry_ops ; 
 int FUNC23 (struct ocfs2_super*,int /*<<< orphan*/ *,struct inode*,struct inode*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC24 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC25 (struct ocfs2_dir_lookup_result*) ; 
 struct inode* FUNC26 (struct inode*,int) ; 
 int FUNC27 (int /*<<< orphan*/ *,struct inode*,struct inode*,struct buffer_head*,struct buffer_head*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int FUNC28 (struct inode*,struct inode*,struct ocfs2_security_xattr_info*) ; 
 int FUNC29 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*,struct ocfs2_security_xattr_info*,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*) ; 
 int FUNC30 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC31 (struct inode*,int) ; 
 int FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC34 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_3__*,scalar_t__,int) ; 
 int FUNC36 (struct ocfs2_super*,struct inode*,struct inode*,scalar_t__,struct buffer_head**,struct buffer_head*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*) ; 
 int FUNC37 (struct ocfs2_super*,struct inode*,struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC38 (struct ocfs2_dinode*) ; 
 int FUNC39 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int FUNC40 (struct ocfs2_super*,struct ocfs2_alloc_context**) ; 
 int FUNC41 (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ; 
 int /*<<< orphan*/ * FUNC42 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC43 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC44 (struct ocfs2_super*) ; 
 scalar_t__ FUNC45 (TYPE_3__*) ; 
 scalar_t__ FUNC46 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC47 (struct inode*) ; 

__attribute__((used)) static int FUNC48(struct inode *dir,
		       struct dentry *dentry,
		       int mode,
		       dev_t dev)
{
	int status = 0;
	struct buffer_head *parent_fe_bh = NULL;
	handle_t *handle = NULL;
	struct ocfs2_super *osb;
	struct ocfs2_dinode *dirfe;
	struct buffer_head *new_fe_bh = NULL;
	struct inode *inode = NULL;
	struct ocfs2_alloc_context *inode_ac = NULL;
	struct ocfs2_alloc_context *data_ac = NULL;
	struct ocfs2_alloc_context *meta_ac = NULL;
	int want_clusters = 0;
	int want_meta = 0;
	int xattr_credits = 0;
	struct ocfs2_security_xattr_info si = {
		.enable = 1,
	};
	int did_quota_inode = 0;
	struct ocfs2_dir_lookup_result lookup = { NULL, };

	FUNC14("(0x%p, 0x%p, %d, %lu, '%.*s')\n", dir, dentry, mode,
		   (unsigned long)dev, dentry->d_name.len,
		   dentry->d_name.name);

	/* get our super block */
	osb = FUNC3(dir->i_sb);

	status = FUNC30(dir, &parent_fe_bh, 1);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC15(status);
		return status;
	}

	if (FUNC5(mode) && (dir->i_nlink >= FUNC34(osb))) {
		status = -EMLINK;
		goto leave;
	}

	dirfe = (struct ocfs2_dinode *) parent_fe_bh->b_data;
	if (!FUNC38(dirfe)) {
		/* can't make a file in a deleted directory. */
		status = -ENOENT;
		goto leave;
	}

	status = FUNC20(dir, dentry->d_name.name,
					   dentry->d_name.len);
	if (status)
		goto leave;

	/* get a spot inside the dir. */
	status = FUNC37(osb, dir, parent_fe_bh,
					      dentry->d_name.name,
					      dentry->d_name.len, &lookup);
	if (status < 0) {
		FUNC15(status);
		goto leave;
	}

	/* reserve an inode spot */
	status = FUNC40(osb, &inode_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC15(status);
		goto leave;
	}

	inode = FUNC26(dir, mode);
	if (!inode) {
		status = -ENOMEM;
		FUNC15(status);
		goto leave;
	}

	/* get security xattr */
	status = FUNC28(inode, dir, &si);
	if (status) {
		if (status == -EOPNOTSUPP)
			si.enable = 0;
		else {
			FUNC15(status);
			goto leave;
		}
	}

	/* calculate meta data/clusters for setting security and acl xattr */
	status = FUNC19(dir, parent_fe_bh, mode,
				       &si, &want_clusters,
				       &xattr_credits, &want_meta);
	if (status < 0) {
		FUNC15(status);
		goto leave;
	}

	/* Reserve a cluster if creating an extent based directory. */
	if (FUNC5(mode) && !FUNC44(osb)) {
		want_clusters += 1;

		/* Dir indexing requires extra space as well */
		if (FUNC43(osb))
			want_meta++;
	}

	status = FUNC41(osb, want_meta, &meta_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC15(status);
		goto leave;
	}

	status = FUNC39(osb, want_clusters, &data_ac);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC15(status);
		goto leave;
	}

	handle = FUNC42(osb, FUNC35(osb->sb,
							    FUNC5(mode),
							    xattr_credits));
	if (FUNC1(handle)) {
		status = FUNC4(handle);
		handle = NULL;
		FUNC15(status);
		goto leave;
	}

	/* We don't use standard VFS wrapper because we don't want vfs_dq_init
	 * to be called. */
	if (FUNC45(osb->sb) &&
	    osb->sb->dq_op->alloc_inode(inode, 1) == NO_QUOTA) {
		status = -EDQUOT;
		goto leave;
	}
	did_quota_inode = 1;

	FUNC14("(0x%p, 0x%p, %d, %lu, '%.*s')\n", dir, dentry,
		   inode->i_mode, (unsigned long)dev, dentry->d_name.len,
		   dentry->d_name.name);

	/* do the real work now. */
	status = FUNC36(osb, dir, inode, dev,
				    &new_fe_bh, parent_fe_bh, handle,
				    inode_ac);
	if (status < 0) {
		FUNC15(status);
		goto leave;
	}

	if (FUNC5(mode)) {
		status = FUNC23(osb, handle, dir, inode,
					    new_fe_bh, data_ac, meta_ac);
		if (status < 0) {
			FUNC15(status);
			goto leave;
		}

		status = FUNC32(handle, FUNC0(dir),
						 parent_fe_bh,
						 OCFS2_JOURNAL_ACCESS_WRITE);
		if (status < 0) {
			FUNC15(status);
			goto leave;
		}
		FUNC18(dirfe, 1);
		status = FUNC33(handle, parent_fe_bh);
		if (status < 0) {
			FUNC15(status);
			goto leave;
		}
		FUNC9(dir);
	}

	status = FUNC27(handle, inode, dir, new_fe_bh, parent_fe_bh,
				meta_ac, data_ac);
	if (status < 0) {
		FUNC15(status);
		goto leave;
	}

	if (si.enable) {
		status = FUNC29(handle, inode, new_fe_bh, &si,
						 meta_ac, data_ac);
		if (status < 0) {
			FUNC15(status);
			goto leave;
		}
	}

	status = FUNC17(handle, dentry, inode,
				 FUNC2(inode)->ip_blkno, parent_fe_bh,
				 &lookup);
	if (status < 0) {
		FUNC15(status);
		goto leave;
	}

	status = FUNC22(dentry, inode,
					  FUNC2(dir)->ip_blkno);
	if (status) {
		FUNC15(status);
		goto leave;
	}

	FUNC10(inode);
	dentry->d_op = &ocfs2_dentry_ops;
	FUNC8(dentry, inode);
	status = 0;
leave:
	if (status < 0 && did_quota_inode)
		FUNC47(inode);
	if (handle)
		FUNC21(osb, handle);

	FUNC31(dir, 1);

	if (status == -ENOSPC)
		FUNC13(0, "Disk is full\n");

	FUNC6(new_fe_bh);
	FUNC6(parent_fe_bh);
	FUNC12(si.name);
	FUNC12(si.value);

	FUNC25(&lookup);

	if ((status < 0) && inode) {
		FUNC7(inode);
		FUNC11(inode);
	}

	if (inode_ac)
		FUNC24(inode_ac);

	if (data_ac)
		FUNC24(data_ac);

	if (meta_ac)
		FUNC24(meta_ac);

	FUNC16(status);

	return status;
}