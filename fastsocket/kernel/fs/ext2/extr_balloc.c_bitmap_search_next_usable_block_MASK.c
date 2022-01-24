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
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  scalar_t__ ext2_grpblk_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static ext2_grpblk_t
FUNC1(ext2_grpblk_t start, struct buffer_head *bh,
					ext2_grpblk_t maxblocks)
{
	ext2_grpblk_t next;

	next = FUNC0(bh->b_data, maxblocks, start);
	if (next >= maxblocks)
		return -1;
	return next;
}