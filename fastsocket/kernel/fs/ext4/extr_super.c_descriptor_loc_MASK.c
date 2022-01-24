#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ext4_sb_info {int s_desc_per_block; TYPE_1__* s_es; } ;
typedef  int ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_first_meta_bg; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_META_BG ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,int) ; 
 scalar_t__ FUNC3 (struct super_block*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ext4_fsblk_t FUNC5(struct super_block *sb,
				   ext4_fsblk_t logical_sb_block, int nr)
{
	struct ext4_sb_info *sbi = FUNC1(sb);
	ext4_group_t bg, first_meta_bg;
	int has_super = 0;

	first_meta_bg = FUNC4(sbi->s_es->s_first_meta_bg);

	if (!FUNC0(sb, EXT4_FEATURE_INCOMPAT_META_BG) ||
	    nr < first_meta_bg)
		return logical_sb_block + nr + 1;
	bg = sbi->s_desc_per_block * nr;
	if (FUNC2(sb, bg))
		has_super = 1;

	return (has_super + FUNC3(sb, bg));
}