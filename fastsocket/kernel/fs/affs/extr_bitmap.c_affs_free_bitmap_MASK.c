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
struct affs_sb_info {int /*<<< orphan*/ * s_bitmap; int /*<<< orphan*/  s_last_bmap; int /*<<< orphan*/ * s_bmap_bh; } ;

/* Variables and functions */
 struct affs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct super_block *sb)
{
	struct affs_sb_info *sbi = FUNC0(sb);

	if (!sbi->s_bitmap)
		return;

	FUNC1(sbi->s_bmap_bh);
	sbi->s_bmap_bh = NULL;
	sbi->s_last_bmap = ~0;
	FUNC2(sbi->s_bitmap);
	sbi->s_bitmap = NULL;
}