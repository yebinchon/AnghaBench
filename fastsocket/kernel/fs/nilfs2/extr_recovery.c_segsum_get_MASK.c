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
struct buffer_head {unsigned int b_size; void* b_data; scalar_t__ b_blocknr; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct buffer_head* FUNC2 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void *FUNC4(struct super_block *sb, struct buffer_head **pbh,
			unsigned int *offset, unsigned int bytes)
{
	void *ptr;
	sector_t blocknr;

	FUNC0((*pbh)->b_size < *offset);
	if (bytes > (*pbh)->b_size - *offset) {
		blocknr = (*pbh)->b_blocknr;
		FUNC1(*pbh);
		*pbh = FUNC2(sb, blocknr + 1);
		if (FUNC3(!*pbh))
			return NULL;
		*offset = 0;
	}
	ptr = (*pbh)->b_data + *offset;
	*offset += bytes;
	return ptr;
}