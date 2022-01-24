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
struct journal_head {scalar_t__ b_committed_data; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int ext3_grpblk_t ;

/* Variables and functions */
 struct journal_head* FUNC0 (struct buffer_head*) ; 
 int FUNC1 (scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

__attribute__((used)) static ext3_grpblk_t
FUNC5(ext3_grpblk_t start, struct buffer_head *bh,
					ext3_grpblk_t maxblocks)
{
	ext3_grpblk_t next;
	struct journal_head *jh = FUNC0(bh);

	while (start < maxblocks) {
		next = FUNC1(bh->b_data, maxblocks, start);
		if (next >= maxblocks)
			return -1;
		if (FUNC2(next, bh))
			return next;
		FUNC3(bh);
		if (jh->b_committed_data)
			start = FUNC1(jh->b_committed_data,
							maxblocks, next);
		FUNC4(bh);
	}
	return -1;
}