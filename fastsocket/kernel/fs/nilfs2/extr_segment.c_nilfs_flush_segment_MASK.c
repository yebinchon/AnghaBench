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
struct nilfs_sc_info {int dummy; } ;
struct nilfs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct nilfs_sb_info* FUNC1 (struct super_block*) ; 
 struct nilfs_sc_info* FUNC2 (struct nilfs_sb_info*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 

void FUNC5(struct super_block *sb, ino_t ino)
{
	struct nilfs_sb_info *sbi = FUNC1(sb);
	struct nilfs_sc_info *sci = FUNC2(sbi);

	if (!sci || FUNC3())
		return;
	FUNC4(sci, FUNC0(sb, ino) ? ino : 0);
					/* assign bit 0 to data files */
}