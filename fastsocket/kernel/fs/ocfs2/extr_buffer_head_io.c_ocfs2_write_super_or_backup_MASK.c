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
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int EROFS ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_write_sync ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ocfs2_super*) ; 
 scalar_t__ FUNC10 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 

int FUNC15(struct ocfs2_super *osb,
				struct buffer_head *bh)
{
	int ret = 0;

	FUNC6();

	FUNC0(FUNC1(bh));
	FUNC8(osb->sb, bh->b_blocknr);

	if (FUNC9(osb) || FUNC10(osb)) {
		ret = -EROFS;
		goto out;
	}

	FUNC5(bh);
	FUNC12(bh);

	/* remove from dirty list before I/O. */
	FUNC3(bh);

	FUNC4(bh); /* for end_buffer_write_sync() */
	bh->b_end_io = end_buffer_write_sync;
	FUNC13(WRITE, bh);

	FUNC14(bh);

	if (!FUNC2(bh)) {
		ret = -EIO;
		FUNC11(bh);
	}

out:
	FUNC7(ret);
	return ret;
}