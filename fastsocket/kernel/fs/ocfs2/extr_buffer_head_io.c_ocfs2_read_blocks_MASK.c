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
typedef  scalar_t__ u64 ;
typedef  struct super_block super_block ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  ML_BH_IO ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_UPTODATE ; 
 int OCFS2_BH_IGNORE_CACHE ; 
 int OCFS2_BH_READAHEAD ; 
 int /*<<< orphan*/  READ ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct ocfs2_caching_info*,unsigned long long,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 scalar_t__ FUNC15 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 struct super_block* FUNC16 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_caching_info*) ; 
 scalar_t__ FUNC19 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_caching_info*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 struct buffer_head* FUNC22 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*) ; 

int FUNC27(struct ocfs2_caching_info *ci, u64 block, int nr,
		      struct buffer_head *bhs[], int flags,
		      int (*validate)(struct super_block *sb,
				      struct buffer_head *bh))
{
	int status = 0;
	int i, ignore_cache = 0;
	struct buffer_head *bh;
	struct super_block *sb = FUNC16(ci);

	FUNC11("(ci=%p, block=(%llu), nr=(%d), flags=%d)\n",
		   ci, (unsigned long long)block, nr, flags);

	FUNC1(!ci);
	FUNC1((flags & OCFS2_BH_READAHEAD) &&
	       (flags & OCFS2_BH_IGNORE_CACHE));

	if (bhs == NULL) {
		status = -EINVAL;
		FUNC12(status);
		goto bail;
	}

	if (nr < 0) {
		FUNC10(ML_ERROR, "asked to read %d blocks!\n", nr);
		status = -EINVAL;
		FUNC12(status);
		goto bail;
	}

	if (nr == 0) {
		FUNC10(ML_BH_IO, "No buffers will be read!\n");
		status = 0;
		goto bail;
	}

	FUNC17(ci);
	for (i = 0 ; i < nr ; i++) {
		if (bhs[i] == NULL) {
			bhs[i] = FUNC22(sb, block++);
			if (bhs[i] == NULL) {
				FUNC18(ci);
				status = -EIO;
				FUNC12(status);
				goto bail;
			}
		}
		bh = bhs[i];
		ignore_cache = (flags & OCFS2_BH_IGNORE_CACHE);

		/* There are three read-ahead cases here which we need to
		 * be concerned with. All three assume a buffer has
		 * previously been submitted with OCFS2_BH_READAHEAD
		 * and it hasn't yet completed I/O.
		 *
		 * 1) The current request is sync to disk. This rarely
		 *    happens these days, and never when performance
		 *    matters - the code can just wait on the buffer
		 *    lock and re-submit.
		 *
		 * 2) The current request is cached, but not
		 *    readahead. ocfs2_buffer_uptodate() will return
		 *    false anyway, so we'll wind up waiting on the
		 *    buffer lock to do I/O. We re-check the request
		 *    with after getting the lock to avoid a re-submit.
		 *
		 * 3) The current request is readahead (and so must
		 *    also be a caching one). We short circuit if the
		 *    buffer is locked (under I/O) and if it's in the
		 *    uptodate cache. The re-check from #2 catches the
		 *    case that the previous read-ahead completes just
		 *    before our is-it-in-flight check.
		 */

		if (!ignore_cache && !FUNC15(ci, bh)) {
			FUNC10(ML_UPTODATE,
			     "bh (%llu), owner %llu not uptodate\n",
			     (unsigned long long)bh->b_blocknr,
			     (unsigned long long)FUNC19(ci));
			/* We're using ignore_cache here to say
			 * "go to disk" */
			ignore_cache = 1;
		}

		if (FUNC3(bh)) {
			if (ignore_cache)
				FUNC10(ML_BH_IO, "trying to sync read a jbd "
					       "managed bh (blocknr = %llu)\n",
				     (unsigned long long)bh->b_blocknr);
			continue;
		}

		if (ignore_cache) {
			if (FUNC2(bh)) {
				/* This should probably be a BUG, or
				 * at least return an error. */
				FUNC10(ML_BH_IO, "asking me to sync read a dirty "
					       "buffer! (blocknr = %llu)\n",
				     (unsigned long long)bh->b_blocknr);
				continue;
			}

			/* A read-ahead request was made - if the
			 * buffer is already under read-ahead from a
			 * previously submitted request than we are
			 * done here. */
			if ((flags & OCFS2_BH_READAHEAD)
			    && FUNC14(ci, bh))
				continue;

			FUNC9(bh);
			if (FUNC3(bh)) {
#ifdef CATCH_BH_JBD_RACES
				mlog(ML_ERROR, "block %llu had the JBD bit set "
					       "while I was in lock_buffer!",
				     (unsigned long long)bh->b_blocknr);
				BUG();
#else
				FUNC25(bh);
				continue;
#endif
			}

			/* Re-check ocfs2_buffer_uptodate() as a
			 * previously read-ahead buffer may have
			 * completed I/O while we were waiting for the
			 * buffer lock. */
			if (!(flags & OCFS2_BH_IGNORE_CACHE)
			    && !(flags & OCFS2_BH_READAHEAD)
			    && FUNC15(ci, bh)) {
				FUNC25(bh);
				continue;
			}

			FUNC7(bh);
			FUNC8(bh); /* for end_buffer_read_sync() */
			if (validate)
				FUNC23(bh);
			bh->b_end_io = end_buffer_read_sync;
			FUNC24(READ, bh);
			continue;
		}
	}

	status = 0;

	for (i = (nr - 1); i >= 0; i--) {
		bh = bhs[i];

		if (!(flags & OCFS2_BH_READAHEAD)) {
			/* We know this can't have changed as we hold the
			 * owner sem. Avoid doing any work on the bh if the
			 * journal has it. */
			if (!FUNC3(bh))
				FUNC26(bh);

			if (!FUNC5(bh)) {
				/* Status won't be cleared from here on out,
				 * so we can safely record this and loop back
				 * to cleanup the other buffers. Don't need to
				 * remove the clustered uptodate information
				 * for this bh as it's not marked locally
				 * uptodate. */
				status = -EIO;
				FUNC21(bh);
				bhs[i] = NULL;
				continue;
			}

			if (FUNC4(bh)) {
				/* We never set NeedsValidate if the
				 * buffer was held by the journal, so
				 * that better not have changed */
				FUNC1(FUNC3(bh));
				FUNC6(bh);
				status = validate(sb, bh);
				if (status) {
					FUNC21(bh);
					bhs[i] = NULL;
					continue;
				}
			}
		}

		/* Always set the buffer in the cache, even if it was
		 * a forced read, or read-ahead which hasn't yet
		 * completed. */
		FUNC20(ci, bh);
	}
	FUNC18(ci);

	FUNC10(ML_BH_IO, "block=(%llu), nr=(%d), cached=%s, flags=0x%x\n", 
	     (unsigned long long)block, nr,
	     ((flags & OCFS2_BH_IGNORE_CACHE) || ignore_cache) ? "no" : "yes",
	     flags);

bail:

	FUNC13(status);
	return status;
}