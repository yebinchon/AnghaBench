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
struct buffer_head {int b_size; struct item_head* b_data; } ;
struct block_head {int dummy; } ;

/* Variables and functions */
 struct block_head* FUNC0 (struct buffer_head*) ; 
 struct disk_child* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct item_head* FUNC2 (struct buffer_head*,int) ; 
 int IH_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (struct block_head*) ; 
 int FUNC5 (struct block_head*) ; 
 scalar_t__ FUNC6 (struct disk_child*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct item_head*,struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct disk_child*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct block_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct block_head*,int) ; 

__attribute__((used)) static void FUNC16(struct buffer_info *bi,
				       int first, int del_num)
{
	struct buffer_head *bh = bi->bi_bh;
	int nr;
	int i, j;
	int last_loc, last_removed_loc;
	struct block_head *blkh;
	struct item_head *ih;

	FUNC3(bh == NULL, "10210: buffer is 0");
	FUNC3(del_num < 0, "10215: del_num less than 0 (%d)", del_num);

	if (del_num == 0)
		return;

	blkh = FUNC0(bh);
	nr = FUNC5(blkh);

	FUNC3(first < 0 || first + del_num > nr,
	       "10220: first=%d, number=%d, there is %d items", first, del_num,
	       nr);

	if (first == 0 && del_num == nr) {
		/* this does not work */
		FUNC10(bi);

		FUNC8(bi->tb, bh, 0);
		return;
	}

	ih = FUNC2(bh, first);

	/* location of unmovable item */
	j = (first == 0) ? bh->b_size : FUNC9(ih - 1);

	/* delete items */
	last_loc = FUNC9(&(ih[nr - 1 - first]));
	last_removed_loc = FUNC9(&(ih[del_num - 1]));

	FUNC11(bh->b_data + last_loc + j - last_removed_loc,
		bh->b_data + last_loc, last_removed_loc - last_loc);

	/* delete item headers */
	FUNC11(ih, ih + del_num, (nr - first - del_num) * IH_SIZE);

	/* change item location */
	for (i = first; i < nr - del_num; i++)
		FUNC13(&(ih[i - first]),
				FUNC9(&(ih[i - first])) + (j -
								 last_removed_loc));

	/* sizes, item number */
	FUNC15(blkh, FUNC5(blkh) - del_num);
	FUNC14(blkh,
			    FUNC4(blkh) + (j - last_removed_loc +
						     IH_SIZE * del_num));

	FUNC8(bi->tb, bh, 0);

	if (bi->bi_parent) {
		struct disk_child *t_dc =
		    FUNC1(bi->bi_parent, bi->bi_position);
		FUNC12(t_dc,
			    FUNC6(t_dc) - (j - last_removed_loc +
					     IH_SIZE * del_num));
		FUNC7(bi->tb, bi->bi_parent, 0);
	}
}