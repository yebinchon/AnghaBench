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
typedef  scalar_t__ u32 ;
struct hfsplus_extent {void* block_count; void* start_block; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hfsplus_extent*) ; 

__attribute__((used)) static int FUNC3(struct hfsplus_extent *extent, u32 offset,
			      u32 alloc_block, u32 block_count)
{
	u32 count, start;
	int i;

	FUNC2(extent);
	for (i = 0; i < 8; extent++, i++) {
		count = FUNC0(extent->block_count);
		if (offset == count) {
			start = FUNC0(extent->start_block);
			if (alloc_block != start + count) {
				if (++i >= 8)
					return -ENOSPC;
				extent++;
				extent->start_block = FUNC1(alloc_block);
			} else
				block_count += count;
			extent->block_count = FUNC1(block_count);
			return 0;
		} else if (offset < count)
			break;
		offset -= count;
	}
	/* panic? */
	return -EIO;
}