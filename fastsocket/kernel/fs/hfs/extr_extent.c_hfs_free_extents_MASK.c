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
typedef  scalar_t__ u16 ;
struct super_block {int dummy; } ;
struct hfs_extent {scalar_t__ count; scalar_t__ block; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_extent*) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, struct hfs_extent *extent,
			    u16 offset, u16 block_nr)
{
	u16 count, start;
	int i;

	FUNC3(extent);
	for (i = 0; i < 3; extent++, i++) {
		count = FUNC0(extent->count);
		if (offset == count)
			goto found;
		else if (offset < count)
			break;
		offset -= count;
	}
	/* panic? */
	return -EIO;
found:
	for (;;) {
		start = FUNC0(extent->block);
		if (count <= block_nr) {
			FUNC2(sb, start, count);
			extent->block = 0;
			extent->count = 0;
			block_nr -= count;
		} else {
			count -= block_nr;
			FUNC2(sb, start + count, block_nr);
			extent->count = FUNC1(count);
			block_nr = 0;
		}
		if (!block_nr || !i)
			return 0;
		i--;
		extent--;
		count = FUNC0(extent->count);
	}
}