#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ocfs2_super {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; int /*<<< orphan*/  b_end_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int EROFS ; 
 scalar_t__ OCFS2_SUPER_BLOCK_BLKNO ; 
 int /*<<< orphan*/  WRITE ; 
 int FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_write_sync ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long long,struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

int FUNC16(struct ocfs2_super *osb, struct buffer_head *bh,
		      struct ocfs2_caching_info *ci)
{
	int ret = 0;

	FUNC6("(bh->b_blocknr = %llu, ci=%p)\n",
		   (unsigned long long)bh->b_blocknr, ci);

	FUNC0(bh->b_blocknr < OCFS2_SUPER_BLOCK_BLKNO);
	FUNC0(FUNC1(bh));

	/* No need to check for a soft readonly file system here. non
	 * journalled writes are only ever done on system files which
	 * can get modified during recovery even if read-only. */
	if (FUNC8(osb)) {
		ret = -EROFS;
		goto out;
	}

	FUNC9(ci);

	FUNC5(bh);
	FUNC13(bh);

	/* remove from dirty list before I/O. */
	FUNC3(bh);

	FUNC4(bh); /* for end_buffer_write_sync() */
	bh->b_end_io = end_buffer_write_sync;
	FUNC14(WRITE, bh);

	FUNC15(bh);

	if (FUNC2(bh)) {
		FUNC11(ci, bh);
	} else {
		/* We don't need to remove the clustered uptodate
		 * information for this bh as it's not marked locally
		 * uptodate. */
		ret = -EIO;
		FUNC12(bh);
	}

	FUNC10(ci);
out:
	FUNC7(ret);
	return ret;
}