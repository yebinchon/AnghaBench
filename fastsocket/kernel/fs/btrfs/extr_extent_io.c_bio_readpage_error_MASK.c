#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct page {TYPE_3__* mapping; } ;
struct io_failure_record {scalar_t__ start; int len; int this_mirror; int in_validation; int logical; int failed_mirror; scalar_t__ bio_flags; } ;
struct inode {int dummy; } ;
struct extent_state {scalar_t__ start; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ block_start; int /*<<< orphan*/  compress_type; int /*<<< orphan*/  flags; } ;
struct extent_io_tree {TYPE_2__* ops; int /*<<< orphan*/  lock; } ;
struct bio {int bi_rw; int bi_vcnt; int bi_sector; scalar_t__ bi_size; int /*<<< orphan*/  bi_bdev; int /*<<< orphan*/  bi_end_io; struct extent_state* bi_private; } ;
struct TYPE_12__ {TYPE_5__* root; struct extent_map_tree extent_tree; struct extent_io_tree io_tree; struct extent_io_tree io_failure_tree; } ;
struct TYPE_11__ {TYPE_4__* fs_info; } ;
struct TYPE_10__ {TYPE_1__* fs_devices; int /*<<< orphan*/  mapping_tree; } ;
struct TYPE_9__ {struct inode* host; } ;
struct TYPE_8__ {int (* submit_bio_hook ) (struct inode*,int,struct bio*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  latest_bdev; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ EXTENT_BIO_COMPRESSED ; 
 int EXTENT_DAMAGED ; 
 int EXTENT_DIRTY ; 
 int /*<<< orphan*/  EXTENT_FLAG_COMPRESSED ; 
 int EXTENT_LOCKED ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct extent_map*) ; 
 int READ_SYNC ; 
 int REQ_FAILFAST_DEV ; 
 int REQ_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct page*,int,scalar_t__) ; 
 struct bio* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 struct extent_state* FUNC7 (struct extent_io_tree*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct io_failure_record*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct extent_io_tree*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct io_failure_record*) ; 
 struct io_failure_record* FUNC12 (int,int /*<<< orphan*/ ) ; 
 struct extent_map* FUNC13 (struct extent_map_tree*,scalar_t__,int) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct extent_io_tree*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct extent_io_tree*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (struct inode*,int,struct bio*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct bio *failed_bio, struct page *page,
				u64 start, u64 end, int failed_mirror,
				struct extent_state *state)
{
	struct io_failure_record *failrec = NULL;
	u64 private;
	struct extent_map *em;
	struct inode *inode = page->mapping->host;
	struct extent_io_tree *failure_tree = &FUNC0(inode)->io_failure_tree;
	struct extent_io_tree *tree = &FUNC0(inode)->io_tree;
	struct extent_map_tree *em_tree = &FUNC0(inode)->extent_tree;
	struct bio *bio;
	int num_copies;
	int ret;
	int read_mode;
	u64 logical;

	FUNC1(failed_bio->bi_rw & REQ_WRITE);

	ret = FUNC10(failure_tree, start, &private);
	if (ret) {
		failrec = FUNC12(sizeof(*failrec), GFP_NOFS);
		if (!failrec)
			return -ENOMEM;
		failrec->start = start;
		failrec->len = end - start + 1;
		failrec->this_mirror = 0;
		failrec->bio_flags = 0;
		failrec->in_validation = 0;

		FUNC16(&em_tree->lock);
		em = FUNC13(em_tree, start, failrec->len);
		if (!em) {
			FUNC17(&em_tree->lock);
			FUNC11(failrec);
			return -EIO;
		}

		if (em->start > start || em->start + em->len < start) {
			FUNC8(em);
			em = NULL;
		}
		FUNC17(&em_tree->lock);

		if (!em || FUNC2(em)) {
			FUNC11(failrec);
			return -EIO;
		}
		logical = start - em->start;
		logical = em->block_start + logical;
		if (FUNC23(EXTENT_FLAG_COMPRESSED, &em->flags)) {
			logical = em->block_start;
			failrec->bio_flags = EXTENT_BIO_COMPRESSED;
			FUNC6(&failrec->bio_flags,
						 em->compress_type);
		}
		FUNC15("bio_readpage_error: (new) logical=%llu, start=%llu, "
			 "len=%llu\n", logical, start, failrec->len);
		failrec->logical = logical;
		FUNC8(em);

		/* set the bits in the private failure tree */
		ret = FUNC18(failure_tree, start, end,
					EXTENT_LOCKED | EXTENT_DIRTY, GFP_NOFS);
		if (ret >= 0)
			ret = FUNC19(failure_tree, start,
						(u64)(unsigned long)failrec);
		/* set the bits in the inode's tree */
		if (ret >= 0)
			ret = FUNC18(tree, start, end, EXTENT_DAMAGED,
						GFP_NOFS);
		if (ret < 0) {
			FUNC11(failrec);
			return ret;
		}
	} else {
		failrec = (struct io_failure_record *)(unsigned long)private;
		FUNC15("bio_readpage_error: (found) logical=%llu, "
			 "start=%llu, len=%llu, validation=%d\n",
			 failrec->logical, failrec->start, failrec->len,
			 failrec->in_validation);
		/*
		 * when data can be on disk more than twice, add to failrec here
		 * (e.g. with a list for failed_mirror) to make
		 * clean_io_failure() clean all those errors at once.
		 */
	}
	num_copies = FUNC5(
			      &FUNC0(inode)->root->fs_info->mapping_tree,
			      failrec->logical, failrec->len);
	if (num_copies == 1) {
		/*
		 * we only have a single copy of the data, so don't bother with
		 * all the retry and error correction code that follows. no
		 * matter what the error is, it is very likely to persist.
		 */
		FUNC15("bio_readpage_error: cannot repair, num_copies == 1. "
			 "state=%p, num_copies=%d, next_mirror %d, "
			 "failed_mirror %d\n", state, num_copies,
			 failrec->this_mirror, failed_mirror);
		FUNC9(inode, failrec, 0);
		return -EIO;
	}

	if (!state) {
		FUNC20(&tree->lock);
		state = FUNC7(tree, failrec->start,
						    EXTENT_LOCKED);
		if (state && state->start != failrec->start)
			state = NULL;
		FUNC21(&tree->lock);
	}

	/*
	 * there are two premises:
	 *	a) deliver good data to the caller
	 *	b) correct the bad sectors on disk
	 */
	if (failed_bio->bi_vcnt > 1) {
		/*
		 * to fulfill b), we need to know the exact failing sectors, as
		 * we don't want to rewrite any more than the failed ones. thus,
		 * we need separate read requests for the failed bio
		 *
		 * if the following BUG_ON triggers, our validation request got
		 * merged. we need separate requests for our algorithm to work.
		 */
		FUNC1(failrec->in_validation);
		failrec->in_validation = 1;
		failrec->this_mirror = failed_mirror;
		read_mode = READ_SYNC | REQ_FAILFAST_DEV;
	} else {
		/*
		 * we're ready to fulfill a) and b) alongside. get a good copy
		 * of the failed sector and if we succeed, we have setup
		 * everything for repair_io_failure to do the rest for us.
		 */
		if (failrec->in_validation) {
			FUNC1(failrec->this_mirror != failed_mirror);
			failrec->in_validation = 0;
			failrec->this_mirror = 0;
		}
		failrec->failed_mirror = failed_mirror;
		failrec->this_mirror++;
		if (failrec->this_mirror == failed_mirror)
			failrec->this_mirror++;
		read_mode = READ_SYNC;
	}

	if (!state || failrec->this_mirror > num_copies) {
		FUNC15("bio_readpage_error: (fail) state=%p, num_copies=%d, "
			 "next_mirror %d, failed_mirror %d\n", state,
			 num_copies, failrec->this_mirror, failed_mirror);
		FUNC9(inode, failrec, 0);
		return -EIO;
	}

	bio = FUNC4(GFP_NOFS, 1);
	if (!bio) {
		FUNC9(inode, failrec, 0);
		return -EIO;
	}
	bio->bi_private = state;
	bio->bi_end_io = failed_bio->bi_end_io;
	bio->bi_sector = failrec->logical >> 9;
	bio->bi_bdev = FUNC0(inode)->root->fs_info->fs_devices->latest_bdev;
	bio->bi_size = 0;

	FUNC3(bio, page, failrec->len, start - FUNC14(page));

	FUNC15("bio_readpage_error: submitting new read[%#x] to "
		 "this_mirror=%d, num_copies=%d, in_validation=%d\n", read_mode,
		 failrec->this_mirror, num_copies, failrec->in_validation);

	ret = tree->ops->submit_bio_hook(inode, read_mode, bio,
					 failrec->this_mirror,
					 failrec->bio_flags, 0);
	return ret;
}