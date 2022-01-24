#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
typedef  scalar_t__ b_blocknr_t ;
struct TYPE_4__ {TYPE_1__* s_sbh; int /*<<< orphan*/  s_properties; } ;
struct TYPE_3__ {scalar_t__ b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  REISERFS_OLD_FORMAT ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,scalar_t__,unsigned int*,unsigned int*) ; 
 unsigned int FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct super_block *s, b_blocknr_t block, int bit_value)
{
	unsigned int bmap, offset;
	unsigned int bmap_count = FUNC4(s);

	if (block == 0 || block >= FUNC1(s)) {
		FUNC5(s, "vs-4010",
			       "block number is out of range %lu (%u)",
			       block, FUNC1(s));
		return 0;
	}

	FUNC3(s, block, &bmap, &offset);

	/* Old format filesystem? Unlikely, but the bitmaps are all up front so
	 * we need to account for it. */
	if (FUNC7(FUNC6(REISERFS_OLD_FORMAT,
			      &(FUNC0(s)->s_properties)))) {
		b_blocknr_t bmap1 = FUNC0(s)->s_sbh->b_blocknr + 1;
		if (block >= bmap1 &&
		    block <= bmap1 + bmap_count) {
			FUNC5(s, "vs-4019", "bitmap block %lu(%u) "
				       "can't be freed or reused",
				       block, bmap_count);
			return 0;
		}
	} else {
		if (offset == 0) {
			FUNC5(s, "vs-4020", "bitmap block %lu(%u) "
				       "can't be freed or reused",
				       block, bmap_count);
			return 0;
		}
	}

	if (bmap >= bmap_count) {
		FUNC5(s, "vs-4030", "bitmap for requested block "
			       "is out of range: block=%lu, bitmap_nr=%u",
			       block, bmap);
		return 0;
	}

	if (bit_value == 0 && block == FUNC2(s)) {
		FUNC5(s, "vs-4050", "this is root block (%u), "
			       "it must be busy", FUNC2(s));
		return 0;
	}

	return 1;
}