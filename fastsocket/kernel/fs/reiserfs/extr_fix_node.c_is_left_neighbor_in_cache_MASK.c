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
struct tree_balance {int* lkey; struct buffer_head** FL; int /*<<< orphan*/  tb_path; struct super_block* tb_sb; } ;
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  b_blocknr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,int) ; 
 struct buffer_head* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,struct buffer_head*,struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 struct buffer_head* FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct tree_balance *tb, int h)
{
	struct buffer_head *father, *left;
	struct super_block *sb = tb->tb_sb;
	b_blocknr_t left_neighbor_blocknr;
	int left_neighbor_position;

	/* Father of the left neighbor does not exist. */
	if (!tb->FL[h])
		return 0;

	/* Calculate father of the node to be balanced. */
	father = FUNC3(tb->tb_path, h + 1);

	FUNC4(!father ||
	       !FUNC0(father) ||
	       !FUNC0(tb->FL[h]) ||
	       !FUNC5(father) ||
	       !FUNC5(tb->FL[h]),
	       "vs-8165: F[h] (%b) or FL[h] (%b) is invalid",
	       father, tb->FL[h]);

	/* Get position of the pointer to the left neighbor into the left father. */
	left_neighbor_position = (father == tb->FL[h]) ?
	    tb->lkey[h] : FUNC1(tb->FL[h]);
	/* Get left neighbor block number. */
	left_neighbor_blocknr =
	    FUNC2(tb->FL[h], left_neighbor_position);
	/* Look for the left neighbor in the cache. */
	if ((left = FUNC7(sb, left_neighbor_blocknr))) {

		FUNC4(FUNC5(left) && !FUNC0(left),
		       "vs-8170: left neighbor (%b %z) is not in the tree",
		       left, left);
		FUNC6(left);
		return 1;
	}

	return 0;
}