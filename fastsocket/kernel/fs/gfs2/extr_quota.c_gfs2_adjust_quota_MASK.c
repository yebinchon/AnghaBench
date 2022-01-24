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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_size; TYPE_2__* i_sb; struct address_space* i_mapping; } ;
struct gfs2_sbd {int sd_fsb2bb_shift; } ;
struct TYPE_3__ {int qb_value; void* qb_limit; void* qb_warn; } ;
struct gfs2_quota_data {TYPE_1__ qd_qb; } ;
struct gfs2_quota {int qu_value; void* qu_limit; void* qu_warn; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; struct inode i_inode; } ;
struct fs_disk_quota {int d_fieldmask; int d_blk_softlimit; int d_blk_hardlimit; int d_bcount; } ;
struct buffer_head {int /*<<< orphan*/  b_size; struct buffer_head* b_this_page; } ;
struct address_space {int dummy; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  q ;
typedef  int loff_t ;
struct TYPE_4__ {unsigned int s_blocksize; int s_blocksize_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EIO ; 
 int ENOMEM ; 
 int FS_DQ_BCOUNT ; 
 int FS_DQ_BHARD ; 
 int FS_DQ_BSOFT ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct gfs2_sbd* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  READ_META ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (struct address_space*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,unsigned int,struct buffer_head*,int) ; 
 int FUNC11 (struct gfs2_inode*,int /*<<< orphan*/ *,char*,int*,int) ; 
 scalar_t__ FUNC12 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC14 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 
 void* FUNC16 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct gfs2_quota*,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*) ; 
 int /*<<< orphan*/  FUNC27 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC28 (struct page*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct gfs2_inode *ip, loff_t loc,
			     s64 change, struct gfs2_quota_data *qd,
			     struct fs_disk_quota *fdq)
{
	struct inode *inode = &ip->i_inode;
	struct gfs2_sbd *sdp = FUNC0(inode);
	struct address_space *mapping = inode->i_mapping;
	unsigned long index = loc >> PAGE_CACHE_SHIFT;
	unsigned offset = loc & (PAGE_CACHE_SIZE - 1);
	unsigned blocksize, iblock, pos;
	struct buffer_head *bh;
	struct page *page;
	void *kaddr, *ptr;
	struct gfs2_quota q, *qp;
	int err, nbytes;
	u64 size;

	if (FUNC12(ip)) {
		err = FUNC14(ip, NULL);
		if (err)
			return err;
	}

	FUNC21(&q, 0, sizeof(struct gfs2_quota));
	err = FUNC11(ip, NULL, (char *)&q, &loc, sizeof(q));
	if (err < 0)
		return err;

	err = -EIO;
	qp = &q;
	qp->qu_value = FUNC2(qp->qu_value);
	qp->qu_value += change;
	qp->qu_value = FUNC6(qp->qu_value);
	qd->qd_qb.qb_value = qp->qu_value;
	if (fdq) {
		if (fdq->d_fieldmask & FS_DQ_BSOFT) {
			qp->qu_warn = FUNC6(fdq->d_blk_softlimit >> sdp->sd_fsb2bb_shift);
			qd->qd_qb.qb_warn = qp->qu_warn;
		}
		if (fdq->d_fieldmask & FS_DQ_BHARD) {
			qp->qu_limit = FUNC6(fdq->d_blk_hardlimit >> sdp->sd_fsb2bb_shift);
			qd->qd_qb.qb_limit = qp->qu_limit;
		}
		if (fdq->d_fieldmask & FS_DQ_BCOUNT) {
			qp->qu_value = FUNC6(fdq->d_bcount >> sdp->sd_fsb2bb_shift);
			qd->qd_qb.qb_value = qp->qu_value;
		}
	}

	/* Write the quota into the quota file on disk */
	ptr = qp;
	nbytes = sizeof(struct gfs2_quota);
get_a_page:
	page = FUNC8(mapping, index, GFP_NOFS);
	if (!page)
		return -ENOMEM;

	blocksize = inode->i_sb->s_blocksize;
	iblock = index << (PAGE_CACHE_SHIFT - inode->i_sb->s_blocksize_bits);

	if (!FUNC24(page))
		FUNC7(page, blocksize, 0);

	bh = FUNC22(page);
	pos = blocksize;
	while (offset >= pos) {
		bh = bh->b_this_page;
		iblock++;
		pos += blocksize;
	}

	if (!FUNC3(bh)) {
		FUNC10(inode, iblock, bh, 1);
		if (!FUNC3(bh))
			goto unlock_out;
		/* If it's a newly allocated disk block for quota, zero it */
		if (FUNC4(bh))
			FUNC28(page, pos - blocksize, bh->b_size);
	}

	if (FUNC1(page))
		FUNC25(bh);

	if (!FUNC5(bh)) {
		FUNC18(READ_META, 1, &bh);
		FUNC27(bh);
		if (!FUNC5(bh))
			goto unlock_out;
	}

	FUNC13(ip->i_gl, bh);

	kaddr = FUNC16(page, KM_USER0);
	if (offset + sizeof(struct gfs2_quota) > PAGE_CACHE_SIZE)
		nbytes = PAGE_CACHE_SIZE - offset;
	FUNC20(kaddr + offset, ptr, nbytes);
	FUNC9(page);
	FUNC17(kaddr, KM_USER0);
	FUNC26(page);
	FUNC23(page);

	/* If quota straddles page boundary, we need to update the rest of the
	 * quota at the beginning of the next page */
	if ((offset + sizeof(struct gfs2_quota)) > PAGE_CACHE_SIZE) {
		ptr = ptr + nbytes;
		nbytes = sizeof(struct gfs2_quota) - nbytes;
		offset = 0;
		index++;
		goto get_a_page;
	}

	size = loc + sizeof(struct gfs2_quota);
	if (size > inode->i_size)
		FUNC15(inode, size);
	inode->i_mtime = inode->i_atime = CURRENT_TIME;
	FUNC19(inode);
	return 0;

unlock_out:
	FUNC26(page);
	FUNC23(page);
	return err;
}