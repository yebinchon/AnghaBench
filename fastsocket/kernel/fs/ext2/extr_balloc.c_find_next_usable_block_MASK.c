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
struct buffer_head {scalar_t__ b_data; } ;
typedef  int ext2_grpblk_t ;

/* Variables and functions */
 int FUNC0 (int,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__,int,int) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ext2_grpblk_t
FUNC4(int start, struct buffer_head *bh, int maxblocks)
{
	ext2_grpblk_t here, next;
	char *p, *r;

	if (start > 0) {
		/*
		 * The goal was occupied; search forward for a free 
		 * block within the next XX blocks.
		 *
		 * end_goal is more or less random, but it has to be
		 * less than EXT2_BLOCKS_PER_GROUP. Aligning up to the
		 * next 64-bit boundary is simple..
		 */
		ext2_grpblk_t end_goal = (start + 63) & ~63;
		if (end_goal > maxblocks)
			end_goal = maxblocks;
		here = FUNC2(bh->b_data, end_goal, start);
		if (here < end_goal)
			return here;
		FUNC1("Bit not found near goal\n");
	}

	here = start;
	if (here < 0)
		here = 0;

	p = ((char *)bh->b_data) + (here >> 3);
	r = FUNC3(p, 0, ((maxblocks + 7) >> 3) - (here >> 3));
	next = (r - ((char *)bh->b_data)) << 3;

	if (next < maxblocks && next >= here)
		return next;

	here = FUNC0(here, bh, maxblocks);
	return here;
}