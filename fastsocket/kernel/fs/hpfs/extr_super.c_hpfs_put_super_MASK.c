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
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct hpfs_sb_info {struct hpfs_sb_info* sb_bmp_dir; struct hpfs_sb_info* sb_cp_table; } ;

/* Variables and functions */
 struct hpfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

__attribute__((used)) static void FUNC5(struct super_block *s)
{
	struct hpfs_sb_info *sbi = FUNC0(s);

	FUNC2();

	FUNC1(sbi->sb_cp_table);
	FUNC1(sbi->sb_bmp_dir);
	FUNC4(s);
	s->s_fs_info = NULL;
	FUNC1(sbi);

	FUNC3();
}