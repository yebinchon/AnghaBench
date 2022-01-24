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
struct item_head {int dummy; } ;
struct disk_child {int dummy; } ;
struct buffer_info {scalar_t__ bi_parent; int /*<<< orphan*/  tb; int /*<<< orphan*/  bi_position; struct buffer_head* bi_bh; } ;
struct buffer_head {int b_size; scalar_t__ b_blocknr; struct item_head* b_data; } ;
struct block_head {int dummy; } ;

/* Variables and functions */
 struct block_head* FUNC0 (struct buffer_head*) ; 
 unsigned long FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 struct disk_child* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct item_head* FUNC4 (struct buffer_head*,int) ; 
 struct item_head* FUNC5 (struct buffer_head*,int) ; 
 int FIRST_TO_LAST ; 
 int IH_SIZE ; 
 int LAST_TO_FIRST ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int FUNC7 (struct block_head*) ; 
 int FUNC8 (struct block_head*) ; 
 scalar_t__ FUNC9 (struct disk_child*) ; 
 scalar_t__ FUNC10 (struct disk_child*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct item_head*) ; 
 int FUNC14 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct item_head*,struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct item_head*,struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct disk_child*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct block_head*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct block_head*,int) ; 

__attribute__((used)) static void FUNC21(struct buffer_info *dest_bi,
				     struct buffer_head *src, int last_first,
				     int first, int cpy_num)
{
	struct buffer_head *dest;
	int nr, free_space;
	int dest_before;
	int last_loc, last_inserted_loc, location;
	int i, j;
	struct block_head *blkh;
	struct item_head *ih;

	FUNC6(last_first != LAST_TO_FIRST && last_first != FIRST_TO_LAST,
	       "vs-10090: bad last_first parameter %d", last_first);
	FUNC6(FUNC2(src) - first < cpy_num,
	       "vs-10100: too few items in source %d, required %d from %d",
	       FUNC2(src), cpy_num, first);
	FUNC6(cpy_num < 0, "vs-10110: can not copy negative amount of items");
	FUNC6(!dest_bi, "vs-10120: can not copy negative amount of items");

	dest = dest_bi->bi_bh;

	FUNC6(!dest, "vs-10130: can not copy negative amount of items");

	if (cpy_num == 0)
		return;

	blkh = FUNC0(dest);
	nr = FUNC8(blkh);
	free_space = FUNC7(blkh);

	/* we will insert items before 0-th or nr-th item in dest buffer. It depends of last_first parameter */
	dest_before = (last_first == LAST_TO_FIRST) ? 0 : nr;

	/* location of head of first new item */
	ih = FUNC5(dest, dest_before);

	FUNC6(FUNC7(blkh) < cpy_num * IH_SIZE,
	       "vs-10140: not enough free space for headers %d (needed %d)",
	       FUNC1(dest), cpy_num * IH_SIZE);

	/* prepare space for headers */
	FUNC16(ih + cpy_num, ih, (nr - dest_before) * IH_SIZE);

	/* copy item headers */
	FUNC15(ih, FUNC5(src, first), cpy_num * IH_SIZE);

	free_space -= (IH_SIZE * cpy_num);
	FUNC19(blkh, free_space);

	/* location of unmovable item */
	j = location = (dest_before == 0) ? dest->b_size : FUNC14(ih - 1);
	for (i = dest_before; i < nr + cpy_num; i++) {
		location -= FUNC13(ih + i - dest_before);
		FUNC18(ih + i - dest_before, location);
	}

	/* prepare space for items */
	last_loc = FUNC14(&(ih[nr + cpy_num - 1 - dest_before]));
	last_inserted_loc = FUNC14(&(ih[cpy_num - 1]));

	/* check free space */
	FUNC6(free_space < j - last_inserted_loc,
	       "vs-10150: not enough free space for items %d (needed %d)",
	       free_space, j - last_inserted_loc);

	FUNC16(dest->b_data + last_loc,
		dest->b_data + last_loc + j - last_inserted_loc,
		last_inserted_loc - last_loc);

	/* copy items */
	FUNC15(dest->b_data + last_inserted_loc,
	       FUNC4(src, (first + cpy_num - 1)), j - last_inserted_loc);

	/* sizes, item number */
	FUNC20(blkh, nr + cpy_num);
	FUNC19(blkh, free_space - (j - last_inserted_loc));

	FUNC12(dest_bi->tb, dest, 0);

	if (dest_bi->bi_parent) {
		struct disk_child *t_dc;
		t_dc = FUNC3(dest_bi->bi_parent, dest_bi->bi_position);
		FUNC6(FUNC9(t_dc) != dest->b_blocknr,
		       "vs-10160: block number in bh does not match to field in disk_child structure %lu and %lu",
		       (long unsigned)dest->b_blocknr,
		       (long unsigned)FUNC9(t_dc));
		FUNC17(t_dc,
			    FUNC10(t_dc) + (j - last_inserted_loc +
					     IH_SIZE * cpy_num));

		FUNC11(dest_bi->tb, dest_bi->bi_parent,
					       0);
	}
}