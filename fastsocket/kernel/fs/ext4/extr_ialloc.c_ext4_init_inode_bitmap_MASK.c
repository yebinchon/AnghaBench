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
struct super_block {int s_blocksize; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_sb_info*,int /*<<< orphan*/ ,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 

unsigned FUNC11(struct super_block *sb, struct buffer_head *bh,
				ext4_group_t block_group,
				struct ext4_group_desc *gdp)
{
	struct ext4_sb_info *sbi = FUNC1(sb);

	FUNC2(bh, FUNC3(bh));

	/* If checksum is bad mark all blocks and inodes use to prevent
	 * allocation, essentially implementing a per-group read-only flag. */
	if (!FUNC7(sbi, block_group, gdp)) {
		FUNC4(sb, "Checksum bad for group %u", block_group);
		FUNC5(sb, gdp, 0);
		FUNC6(sb, gdp, 0);
		FUNC8(sb, gdp, 0);
		FUNC10(bh->b_data, 0xff, sb->s_blocksize);
		return 0;
	}

	FUNC10(bh->b_data, 0, (FUNC0(sb) + 7) / 8);
	FUNC9(FUNC0(sb), sb->s_blocksize * 8,
			bh->b_data);

	return FUNC0(sb);
}