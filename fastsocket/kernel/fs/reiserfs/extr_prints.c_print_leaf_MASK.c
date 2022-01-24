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
struct item_head {int b_blocknr; int /*<<< orphan*/  ih_key; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  ih_key; } ;
struct block_head {int dummy; } ;

/* Variables and functions */
 struct block_head* FUNC0 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct item_head*,struct item_head*) ; 
 struct item_head* FUNC3 (struct item_head*,int /*<<< orphan*/ ) ; 
 int PRINT_LEAF_ITEMS ; 
 int FUNC4 (struct block_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct item_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct item_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,struct item_head*) ; 

__attribute__((used)) static int FUNC9(struct buffer_head *bh, int print_mode, int first,
		      int last)
{
	struct block_head *blkh;
	struct item_head *ih;
	int i, nr;
	int from, to;

	if (!FUNC1(bh))
		return 1;

	FUNC5(bh);

	blkh = FUNC0(bh);
	ih = FUNC3(bh, 0);
	nr = FUNC4(blkh);

	FUNC7
	    ("\n===================================================================\n");
	FUNC8("LEAF NODE (%ld) contains %z\n", bh->b_blocknr, bh);

	if (!(print_mode & PRINT_LEAF_ITEMS)) {
		FUNC8("FIRST ITEM_KEY: %k, LAST ITEM KEY: %k\n",
				(ih->ih_key), &((ih + nr - 1)->ih_key));
		return 0;
	}

	if (first < 0 || first > nr - 1)
		from = 0;
	else
		from = first;

	if (last < 0 || last > nr)
		to = nr;
	else
		to = last;

	ih += from;
	FUNC7
	    ("-------------------------------------------------------------------------------\n");
	FUNC7
	    ("|##|   type    |           key           | ilen | free_space | version | loc  |\n");
	for (i = from; i < to; i++, ih++) {
		FUNC7
		    ("-------------------------------------------------------------------------------\n");
		FUNC8("|%2d| %h |\n", i, ih);
		if (print_mode & PRINT_LEAF_ITEMS)
			FUNC6(ih, FUNC2(bh, ih));
	}

	FUNC7
	    ("===================================================================\n");

	return 0;
}