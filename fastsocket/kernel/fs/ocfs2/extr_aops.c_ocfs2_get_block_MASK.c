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
typedef  scalar_t__ u64 ;
struct ocfs2_super {int dummy; } ;
struct inode {scalar_t__ i_blkbits; unsigned long long i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct buffer_head {scalar_t__ b_size; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int ip_flags; unsigned long long ip_clusters; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 unsigned int OCFS2_EXT_UNWRITTEN ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_SYSTEM_FILE ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct inode*,unsigned long long,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC12 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,unsigned int*) ; 
 scalar_t__ FUNC13 (struct ocfs2_super*) ; 
 int FUNC14 (struct inode*,scalar_t__,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

int FUNC16(struct inode *inode, sector_t iblock,
		    struct buffer_head *bh_result, int create)
{
	int err = 0;
	unsigned int ext_flags;
	u64 max_blocks = bh_result->b_size >> inode->i_blkbits;
	u64 p_blkno, count, past_eof;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);

	FUNC9("(0x%p, %llu, 0x%p, %d)\n", inode,
		   (unsigned long long)iblock, bh_result, create);

	if (FUNC0(inode)->ip_flags & OCFS2_INODE_SYSTEM_FILE)
		FUNC8(ML_NOTICE, "get_block on system inode 0x%p (%lu)\n",
		     inode, inode->i_ino);

	if (FUNC2(inode->i_mode)) {
		/* this always does I/O for some reason. */
		err = FUNC14(inode, iblock, bh_result, create);
		goto bail;
	}

	err = FUNC12(inode, iblock, &p_blkno, &count,
					  &ext_flags);
	if (err) {
		FUNC8(ML_ERROR, "Error %d from get_blocks(0x%p, %llu, 1, "
		     "%llu, NULL)\n", err, inode, (unsigned long long)iblock,
		     (unsigned long long)p_blkno);
		goto bail;
	}

	if (max_blocks < count)
		count = max_blocks;

	/*
	 * ocfs2 never allocates in this function - the only time we
	 * need to use BH_New is when we're extending i_size on a file
	 * system which doesn't support holes, in which case BH_New
	 * allows block_prepare_write() to zero.
	 *
	 * If we see this on a sparse file system, then a truncate has
	 * raced us and removed the cluster. In this case, we clear
	 * the buffers dirty and uptodate bits and let the buffer code
	 * ignore it as a hole.
	 */
	if (create && p_blkno == 0 && FUNC13(osb)) {
		FUNC3(bh_result);
		FUNC4(bh_result);
		goto bail;
	}

	/* Treat the unwritten extent as a hole for zeroing purposes. */
	if (p_blkno && !(ext_flags & OCFS2_EXT_UNWRITTEN))
		FUNC7(bh_result, inode->i_sb, p_blkno);

	bh_result->b_size = count << inode->i_blkbits;

	if (!FUNC13(osb)) {
		if (p_blkno == 0) {
			err = -EIO;
			FUNC8(ML_ERROR,
			     "iblock = %llu p_blkno = %llu blkno=(%llu)\n",
			     (unsigned long long)iblock,
			     (unsigned long long)p_blkno,
			     (unsigned long long)FUNC0(inode)->ip_blkno);
			FUNC8(ML_ERROR, "Size %llu, clusters %u\n", (unsigned long long)FUNC6(inode), FUNC0(inode)->ip_clusters);
			FUNC5();
			goto bail;
		}

		past_eof = FUNC11(inode->i_sb, FUNC6(inode));
		FUNC8(0, "Inode %lu, past_eof = %llu\n", inode->i_ino,
		     (unsigned long long)past_eof);

		if (create && (iblock >= past_eof))
			FUNC15(bh_result);
	}

bail:
	if (err < 0)
		err = -EIO;

	FUNC10(err);
	return err;
}