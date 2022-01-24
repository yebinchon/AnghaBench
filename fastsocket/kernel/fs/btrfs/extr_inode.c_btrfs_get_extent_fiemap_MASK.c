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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct extent_map {scalar_t__ block_start; scalar_t__ start; scalar_t__ block_len; scalar_t__ orig_start; scalar_t__ len; int /*<<< orphan*/ * bdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  io_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int ENOMEM ; 
 struct extent_map* FUNC1 (int) ; 
 int /*<<< orphan*/  EXTENT_DELALLOC ; 
 scalar_t__ EXTENT_MAP_DELALLOC ; 
 scalar_t__ EXTENT_MAP_HOLE ; 
 scalar_t__ FUNC2 (struct extent_map*) ; 
 struct extent_map* FUNC3 () ; 
 struct extent_map* FUNC4 (struct inode*,struct page*,size_t,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_map*) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

struct extent_map *FUNC10(struct inode *inode, struct page *page,
					   size_t pg_offset, u64 start, u64 len,
					   int create)
{
	struct extent_map *em;
	struct extent_map *hole_em = NULL;
	u64 range_start = start;
	u64 end;
	u64 found;
	u64 found_end;
	int err = 0;

	em = FUNC4(inode, page, pg_offset, start, len, create);
	if (FUNC2(em))
		return em;
	if (em) {
		/*
		 * if our em maps to a hole, there might
		 * actually be delalloc bytes behind it
		 */
		if (em->block_start != EXTENT_MAP_HOLE)
			return em;
		else
			hole_em = em;
	}

	/* check to see if we've wrapped (len == -1 or similar) */
	end = start + len;
	if (end < start)
		end = (u64)-1;
	else
		end -= 1;

	em = NULL;

	/* ok, we didn't find anything, lets look for delalloc */
	found = FUNC5(&FUNC0(inode)->io_tree, &range_start,
				 end, len, EXTENT_DELALLOC, 1);
	found_end = range_start + found;
	if (found_end < range_start)
		found_end = (u64)-1;

	/*
	 * we didn't find anything useful, return
	 * the original results from get_extent()
	 */
	if (range_start > end || found_end <= start) {
		em = hole_em;
		hole_em = NULL;
		goto out;
	}

	/* adjust the range_start to make sure it doesn't
	 * go backwards from the start they passed in
	 */
	range_start = FUNC8(start,range_start);
	found = found_end - range_start;

	if (found > 0) {
		u64 hole_start = start;
		u64 hole_len = len;

		em = FUNC3();
		if (!em) {
			err = -ENOMEM;
			goto out;
		}
		/*
		 * when btrfs_get_extent can't find anything it
		 * returns one huge hole
		 *
		 * make sure what it found really fits our range, and
		 * adjust to make sure it is based on the start from
		 * the caller
		 */
		if (hole_em) {
			u64 calc_end = FUNC6(hole_em);

			if (calc_end <= start || (hole_em->start > end)) {
				FUNC7(hole_em);
				hole_em = NULL;
			} else {
				hole_start = FUNC8(hole_em->start, start);
				hole_len = calc_end - hole_start;
			}
		}
		em->bdev = NULL;
		if (hole_em && range_start > hole_start) {
			/* our hole starts before our delalloc, so we
			 * have to return just the parts of the hole
			 * that go until  the delalloc starts
			 */
			em->len = FUNC9(hole_len,
				      range_start - hole_start);
			em->start = hole_start;
			em->orig_start = hole_start;
			/*
			 * don't adjust block start at all,
			 * it is fixed at EXTENT_MAP_HOLE
			 */
			em->block_start = hole_em->block_start;
			em->block_len = hole_len;
		} else {
			em->start = range_start;
			em->len = found;
			em->orig_start = range_start;
			em->block_start = EXTENT_MAP_DELALLOC;
			em->block_len = found;
		}
	} else if (hole_em) {
		return hole_em;
	}
out:

	FUNC7(hole_em);
	if (err) {
		FUNC7(em);
		return FUNC1(err);
	}
	return em;
}