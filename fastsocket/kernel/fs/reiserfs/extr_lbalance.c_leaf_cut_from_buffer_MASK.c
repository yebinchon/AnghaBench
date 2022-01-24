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
struct buffer_head {int b_size; scalar_t__ b_data; } ;
struct block_head {int dummy; } ;

/* Variables and functions */
 struct block_head* FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*,struct item_head*) ; 
 struct disk_child* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct item_head* FUNC3 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int UNFM_P_SIZE ; 
 scalar_t__ FUNC5 (struct block_head*) ; 
 int FUNC6 (struct block_head*) ; 
 scalar_t__ FUNC7 (struct disk_child*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct item_head*) ; 
 int FUNC12 (struct item_head*) ; 
 int FUNC13 (struct item_head*) ; 
 scalar_t__ FUNC14 (struct item_head*) ; 
 scalar_t__ FUNC15 (struct item_head*) ; 
 scalar_t__ FUNC16 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct item_head*) ; 
 scalar_t__ FUNC18 (struct item_head*) ; 
 int FUNC19 (struct buffer_head*,struct item_head*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (struct disk_child*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct item_head*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct block_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct item_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct item_head*,scalar_t__) ; 

void FUNC27(struct buffer_info *bi, int cut_item_num,
			  int pos_in_item, int cut_size)
{
	int nr;
	struct buffer_head *bh = bi->bi_bh;
	struct block_head *blkh;
	struct item_head *ih;
	int last_loc, unmoved_loc;
	int i;

	blkh = FUNC0(bh);
	nr = FUNC6(blkh);

	/* item head of truncated item */
	ih = FUNC3(bh, cut_item_num);

	if (FUNC15(ih)) {
		/* first cut entry () */
		cut_size = FUNC19(bh, ih, pos_in_item, cut_size);
		if (pos_in_item == 0) {
			/* change key */
			FUNC4(cut_item_num,
			       "when 0-th enrty of item is cut, that item must be first in the node, not %d-th",
			       cut_item_num);
			/* change item key by key of first entry in the item */
			FUNC26(ih, FUNC8(FUNC1(bh, ih)));
			/*memcpy (&ih->ih_key.k_offset, &(B_I_DEH (bh, ih)->deh_offset), SHORT_KEY_SIZE); */
		}
	} else {
		/* item is direct or indirect */
		FUNC4(FUNC17(ih), "10195: item is stat data");
		FUNC4(pos_in_item && pos_in_item + cut_size != FUNC12(ih),
		       "10200: invalid offset (%lu) or trunc_size (%lu) or ih_item_len (%lu)",
		       (long unsigned)pos_in_item, (long unsigned)cut_size,
		       (long unsigned)FUNC12(ih));

		/* shift item body to left if cut is from the head of item */
		if (pos_in_item == 0) {
			FUNC20(bh->b_data + FUNC13(ih),
				bh->b_data + FUNC13(ih) + cut_size,
				FUNC12(ih) - cut_size);

			/* change key of item */
			if (FUNC14(ih))
				FUNC26(ih,
						   FUNC18(ih) +
						   cut_size);
			else {
				FUNC26(ih,
						   FUNC18(ih) +
						   (cut_size / UNFM_P_SIZE) *
						   bh->b_size);
				FUNC4(FUNC12(ih) == cut_size
				       && FUNC11(ih),
				       "10205: invalid ih_free_space (%h)", ih);
			}
		}
	}

	/* location of the last item */
	last_loc = FUNC13(&(ih[nr - cut_item_num - 1]));

	/* location of the item, which is remaining at the same place */
	unmoved_loc = cut_item_num ? FUNC13(ih - 1) : bh->b_size;

	/* shift */
	FUNC20(bh->b_data + last_loc + cut_size, bh->b_data + last_loc,
		unmoved_loc - last_loc - cut_size);

	/* change item length */
	FUNC22(ih, FUNC12(ih) - cut_size);

	if (FUNC16(ih)) {
		if (pos_in_item)
			FUNC25(ih, 0);
	}

	/* change locations */
	for (i = cut_item_num; i < nr; i++)
		FUNC23(&(ih[i - cut_item_num]),
				FUNC13(&ih[i - cut_item_num]) + cut_size);

	/* size, free space */
	FUNC24(blkh, FUNC5(blkh) + cut_size);

	FUNC10(bi->tb, bh, 0);

	if (bi->bi_parent) {
		struct disk_child *t_dc;
		t_dc = FUNC2(bi->bi_parent, bi->bi_position);
		FUNC21(t_dc, FUNC7(t_dc) - cut_size);
		FUNC9(bi->tb, bi->bi_parent, 0);
	}
}