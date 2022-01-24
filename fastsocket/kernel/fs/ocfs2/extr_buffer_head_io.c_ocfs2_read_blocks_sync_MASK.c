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
typedef  int /*<<< orphan*/  u64 ;
struct ocfs2_super {int /*<<< orphan*/  sb; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EIO ; 
 int /*<<< orphan*/  ML_BH_IO ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  READ ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 struct buffer_head* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 

int FUNC13(struct ocfs2_super *osb, u64 block,
			   unsigned int nr, struct buffer_head *bhs[])
{
	int status = 0;
	unsigned int i;
	struct buffer_head *bh;

	if (!nr) {
		FUNC7(ML_BH_IO, "No buffers will be read!\n");
		goto bail;
	}

	for (i = 0 ; i < nr ; i++) {
		if (bhs[i] == NULL) {
			bhs[i] = FUNC10(osb->sb, block++);
			if (bhs[i] == NULL) {
				status = -EIO;
				FUNC8(status);
				goto bail;
			}
		}
		bh = bhs[i];

		if (FUNC2(bh)) {
			FUNC7(ML_BH_IO,
			     "trying to sync read a jbd "
			     "managed bh (blocknr = %llu), skipping\n",
			     (unsigned long long)bh->b_blocknr);
			continue;
		}

		if (FUNC1(bh)) {
			/* This should probably be a BUG, or
			 * at least return an error. */
			FUNC7(ML_ERROR,
			     "trying to sync read a dirty "
			     "buffer! (blocknr = %llu), skipping\n",
			     (unsigned long long)bh->b_blocknr);
			continue;
		}

		FUNC6(bh);
		if (FUNC2(bh)) {
			FUNC7(ML_ERROR,
			     "block %llu had the JBD bit set "
			     "while I was in lock_buffer!",
			     (unsigned long long)bh->b_blocknr);
			FUNC0();
		}

		FUNC4(bh);
		FUNC5(bh); /* for end_buffer_read_sync() */
		bh->b_end_io = end_buffer_read_sync;
		FUNC11(READ, bh);
	}

	for (i = nr; i > 0; i--) {
		bh = bhs[i - 1];

		/* No need to wait on the buffer if it's managed by JBD. */
		if (!FUNC2(bh))
			FUNC12(bh);

		if (!FUNC3(bh)) {
			/* Status won't be cleared from here on out,
			 * so we can safely record this and loop back
			 * to cleanup the other buffers. */
			status = -EIO;
			FUNC9(bh);
			bhs[i - 1] = NULL;
		}
	}

bail:
	return status;
}