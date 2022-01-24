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
struct ext4_extent_header {int /*<<< orphan*/  eh_entries; } ;
struct ext4_extent {scalar_t__ ee_len; } ;

/* Variables and functions */
 struct ext4_extent* FUNC0 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_extent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_extent*,struct ext4_extent*,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct ext4_extent *o_start,
			      struct ext4_extent *o_end,
			      struct ext4_extent *start_ext,
			      struct ext4_extent *new_ext,
			      struct ext4_extent *end_ext,
			      struct ext4_extent_header *eh,
			      int range_to_move)
{
	int i = 0;
	unsigned long len;

	/* Move the existing extents */
	if (range_to_move && o_end < FUNC0(eh)) {
		len = (unsigned long)(FUNC0(eh) + 1) -
			(unsigned long)(o_end + 1);
		FUNC4(o_end + 1 + range_to_move, o_end + 1, len);
	}

	/* Insert start entry */
	if (start_ext->ee_len)
		o_start[i++].ee_len = start_ext->ee_len;

	/* Insert new entry */
	if (new_ext->ee_len) {
		o_start[i] = *new_ext;
		FUNC2(&o_start[i++], FUNC1(new_ext));
	}

	/* Insert end entry */
	if (end_ext->ee_len)
		o_start[i] = *end_ext;

	/* Increment the total entries counter on the extent block */
	FUNC3(&eh->eh_entries, range_to_move);
}