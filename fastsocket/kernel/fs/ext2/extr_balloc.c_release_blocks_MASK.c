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
struct super_block {int s_dirt; } ;
struct ext2_sb_info {int /*<<< orphan*/  s_freeblocks_counter; } ;

/* Variables and functions */
 struct ext2_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct super_block *sb, int count)
{
	if (count) {
		struct ext2_sb_info *sbi = FUNC0(sb);

		FUNC1(&sbi->s_freeblocks_counter, count);
		sb->s_dirt = 1;
	}
}