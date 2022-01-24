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
struct super_block {int dummy; } ;
struct buffer_head {unsigned int b_size; scalar_t__ b_blocknr; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct buffer_head* FUNC2 (struct super_block*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct super_block *sb, struct buffer_head **pbh,
			unsigned int *offset, unsigned int bytes,
			unsigned long count)
{
	unsigned int rest_item_in_current_block
		= ((*pbh)->b_size - *offset) / bytes;

	if (count <= rest_item_in_current_block) {
		*offset += bytes * count;
	} else {
		sector_t blocknr = (*pbh)->b_blocknr;
		unsigned int nitem_per_block = (*pbh)->b_size / bytes;
		unsigned int bcnt;

		count -= rest_item_in_current_block;
		bcnt = FUNC0(count, nitem_per_block);
		*offset = bytes * (count - (bcnt - 1) * nitem_per_block);

		FUNC1(*pbh);
		*pbh = FUNC2(sb, blocknr + bcnt);
	}
}