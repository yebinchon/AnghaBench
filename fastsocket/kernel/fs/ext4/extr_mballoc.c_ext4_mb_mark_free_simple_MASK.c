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
struct super_block {int s_blocksize_bits; } ;
struct ext4_sb_info {int* s_mb_offsets; } ;
struct ext4_group_info {int /*<<< orphan*/ * bb_counters; } ;
typedef  scalar_t__ ext4_grpblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void*) ; 

__attribute__((used)) static void FUNC6(struct super_block *sb,
				void *buddy, ext4_grpblk_t first, ext4_grpblk_t len,
					struct ext4_group_info *grp)
{
	struct ext4_sb_info *sbi = FUNC2(sb);
	ext4_grpblk_t min;
	ext4_grpblk_t max;
	ext4_grpblk_t chunk;
	unsigned short border;

	FUNC0(len > FUNC1(sb));

	border = 2 << sb->s_blocksize_bits;

	while (len > 0) {
		/* find how many blocks can be covered since this position */
		max = FUNC3(first | border) - 1;

		/* find how many blocks of power 2 we need to mark */
		min = FUNC4(len) - 1;

		if (max < min)
			min = max;
		chunk = 1 << min;

		/* mark multiblock chunks only */
		grp->bb_counters[min]++;
		if (min > 0)
			FUNC5(first >> min,
				     buddy + sbi->s_mb_offsets[min]);

		len -= chunk;
		first += chunk;
	}
}