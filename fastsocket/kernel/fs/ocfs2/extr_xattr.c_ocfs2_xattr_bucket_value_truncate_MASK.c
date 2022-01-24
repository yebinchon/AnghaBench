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
typedef  int u64 ;
struct ocfs2_xattr_value_root {int dummy; } ;
struct ocfs2_xattr_value_buf {TYPE_2__* vb_bh; struct ocfs2_xattr_value_root* vb_xv; int /*<<< orphan*/  vb_access; } ;
struct ocfs2_xattr_set_ctxt {int /*<<< orphan*/  handle; } ;
struct ocfs2_xattr_header {struct ocfs2_xattr_entry* xh_entries; } ;
struct ocfs2_xattr_entry {int /*<<< orphan*/  xe_value_size; int /*<<< orphan*/  xe_name_len; int /*<<< orphan*/  xe_name_offset; } ;
struct ocfs2_xattr_bucket {TYPE_2__** bu_bhs; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_4__ {scalar_t__ b_data; } ;
struct TYPE_3__ {size_t s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int OCFS2_XATTR_ROOT_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ocfs2_xattr_bucket*) ; 
 struct ocfs2_xattr_header* FUNC3 (struct ocfs2_xattr_bucket*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  ocfs2_journal_access ; 
 int FUNC8 (int /*<<< orphan*/ ,struct ocfs2_xattr_bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ocfs2_xattr_bucket*) ; 
 scalar_t__ FUNC10 (struct ocfs2_xattr_entry*) ; 
 int FUNC11 (struct inode*,struct ocfs2_xattr_value_buf*,int,struct ocfs2_xattr_set_ctxt*) ; 

__attribute__((used)) static int FUNC12(struct inode *inode,
					     struct ocfs2_xattr_bucket *bucket,
					     int xe_off,
					     int len,
					     struct ocfs2_xattr_set_ctxt *ctxt)
{
	int ret, offset;
	u64 value_blk;
	struct ocfs2_xattr_entry *xe;
	struct ocfs2_xattr_header *xh = FUNC3(bucket);
	size_t blocksize = inode->i_sb->s_blocksize;
	struct ocfs2_xattr_value_buf vb = {
		.vb_access = ocfs2_journal_access,
	};

	xe = &xh->xh_entries[xe_off];

	FUNC0(!xe || FUNC10(xe));

	offset = FUNC5(xe->xe_name_offset) +
		 FUNC1(xe->xe_name_len);

	value_blk = offset / blocksize;

	/* We don't allow ocfs2_xattr_value to be stored in different block. */
	FUNC0(value_blk != (offset + OCFS2_XATTR_ROOT_SIZE - 1) / blocksize);

	vb.vb_bh = bucket->bu_bhs[value_blk];
	FUNC0(!vb.vb_bh);

	vb.vb_xv = (struct ocfs2_xattr_value_root *)
		(vb.vb_bh->b_data + offset % blocksize);

	/*
	 * From here on out we have to dirty the bucket.  The generic
	 * value calls only modify one of the bucket's bhs, but we need
	 * to send the bucket at once.  So if they error, they *could* have
	 * modified something.  We have to assume they did, and dirty
	 * the whole bucket.  This leaves us in a consistent state.
	 */
	FUNC6(0, "truncate %u in xattr bucket %llu to %d bytes.\n",
	     xe_off, (unsigned long long)FUNC2(bucket), len);
	ret = FUNC11(inode, &vb, len, ctxt);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	ret = FUNC8(ctxt->handle, bucket,
						OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC7(ret);
		goto out;
	}

	xe->xe_value_size = FUNC4(len);

	FUNC9(ctxt->handle, bucket);

out:
	return ret;
}