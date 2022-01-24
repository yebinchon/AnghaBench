#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct page {TYPE_1__* mapping; int /*<<< orphan*/  flags; scalar_t__ index; } ;
struct extent_state {scalar_t__ start; } ;
struct extent_io_tree {scalar_t__ track_uptodate; TYPE_2__* ops; int /*<<< orphan*/  lock; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_device {int dummy; } ;
struct bio_vec {scalar_t__ bv_offset; scalar_t__ bv_len; struct page* bv_page; } ;
struct bio {int bi_vcnt; int /*<<< orphan*/  bi_flags; scalar_t__ bi_bdev; int /*<<< orphan*/  bi_idx; struct bio_vec* bi_io_vec; } ;
struct TYPE_6__ {struct btrfs_root* root; struct extent_io_tree io_tree; } ;
struct TYPE_5__ {int (* readpage_end_io_hook ) (struct page*,scalar_t__,scalar_t__,struct extent_state*,int) ;int (* readpage_io_failed_hook ) (struct page*,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int /*<<< orphan*/  BTRFS_DEV_STAT_CORRUPTION_ERRS ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  EXTENT_LOCKED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ PAGE_CACHE_SHIFT ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int FUNC5 (struct bio*,struct page*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_device*,int /*<<< orphan*/ ) ; 
 struct btrfs_device* FUNC7 (struct btrfs_root*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_state*,struct extent_state**) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_io_tree*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_io_tree*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct page*) ; 
 struct extent_state* FUNC12 (struct extent_io_tree*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ,int,long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct page*,scalar_t__,scalar_t__,struct extent_state*,int) ; 
 int FUNC19 (struct page*,int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct extent_state**) ; 
 int /*<<< orphan*/  FUNC22 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 

__attribute__((used)) static void FUNC24(struct bio *bio, int err)
{
	int uptodate = FUNC20(BIO_UPTODATE, &bio->bi_flags);
	struct bio_vec *bvec_end = bio->bi_io_vec + bio->bi_vcnt - 1;
	struct bio_vec *bvec = bio->bi_io_vec;
	struct extent_io_tree *tree;
	u64 start;
	u64 end;
	int whole_page;
	int mirror;
	int ret;

	if (err)
		uptodate = 0;

	do {
		struct page *page = bvec->bv_page;
		struct extent_state *cached = NULL;
		struct extent_state *state;

		FUNC13("end_bio_extent_readpage: bi_vcnt=%d, idx=%d, err=%d, "
			 "mirror=%ld\n", bio->bi_vcnt, bio->bi_idx, err,
			 (long int)bio->bi_bdev);
		tree = &FUNC0(page->mapping->host)->io_tree;

		start = ((u64)page->index << PAGE_CACHE_SHIFT) +
			bvec->bv_offset;
		end = start + bvec->bv_len - 1;

		if (bvec->bv_offset == 0 && bvec->bv_len == PAGE_CACHE_SIZE)
			whole_page = 1;
		else
			whole_page = 0;

		if (++bvec <= bvec_end)
			FUNC14(&bvec->bv_page->flags);

		FUNC16(&tree->lock);
		state = FUNC12(tree, start, EXTENT_LOCKED);
		if (state && state->start == start) {
			/*
			 * take a reference on the state, unlock will drop
			 * the ref
			 */
			FUNC8(state, &cached);
		}
		FUNC17(&tree->lock);

		mirror = (int)(unsigned long)bio->bi_bdev;
		if (uptodate && tree->ops && tree->ops->readpage_end_io_hook) {
			ret = tree->ops->readpage_end_io_hook(page, start, end,
							      state, mirror);
			if (ret) {
				/* no IO indicated but software detected errors
				 * in the block, either checksum errors or
				 * issues with the contents */
				struct btrfs_root *root =
					FUNC0(page->mapping->host)->root;
				struct btrfs_device *device;

				uptodate = 0;
				device = FUNC7(
						root, start, mirror);
				if (device)
					FUNC6(device,
						BTRFS_DEV_STAT_CORRUPTION_ERRS);
			} else {
				FUNC11(start, page);
			}
		}

		if (!uptodate && tree->ops && tree->ops->readpage_io_failed_hook) {
			ret = tree->ops->readpage_io_failed_hook(page, mirror);
			if (!ret && !err &&
			    FUNC20(BIO_UPTODATE, &bio->bi_flags))
				uptodate = 1;
		} else if (!uptodate) {
			/*
			 * The generic bio_readpage_error handles errors the
			 * following way: If possible, new read requests are
			 * created and submitted and will end up in
			 * end_bio_extent_readpage as well (if we're lucky, not
			 * in the !uptodate case). In that case it returns 0 and
			 * we just go on with the next page in our bio. If it
			 * can't handle the error it will return -EIO and we
			 * remain responsible for that page.
			 */
			ret = FUNC5(bio, page, start, end, mirror, NULL);
			if (ret == 0) {
				uptodate =
					FUNC20(BIO_UPTODATE, &bio->bi_flags);
				if (err)
					uptodate = 0;
				FUNC21(&cached);
				continue;
			}
		}

		if (uptodate && tree->track_uptodate) {
			FUNC15(tree, start, end, &cached,
					    GFP_ATOMIC);
		}
		FUNC22(tree, start, end, &cached, GFP_ATOMIC);

		if (whole_page) {
			if (uptodate) {
				FUNC3(page);
			} else {
				FUNC1(page);
				FUNC2(page);
			}
			FUNC23(page);
		} else {
			if (uptodate) {
				FUNC10(tree, page);
			} else {
				FUNC1(page);
				FUNC2(page);
			}
			FUNC9(tree, page);
		}
	} while (bvec <= bvec_end);

	FUNC4(bio);
}