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
struct super_block {int /*<<< orphan*/ * s_fs_info; scalar_t__ s_dirt; } ;
struct TYPE_2__ {scalar_t__ iocharset; } ;
struct msdos_sb_info {TYPE_1__ options; int /*<<< orphan*/  nls_io; int /*<<< orphan*/  nls_disk; int /*<<< orphan*/  fat_inode; } ;

/* Variables and functions */
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 scalar_t__ fat_default_iocharset ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msdos_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct msdos_sb_info *sbi = FUNC0(sb);

	FUNC4();

	if (sb->s_dirt)
		FUNC1(sb);

	FUNC2(sbi->fat_inode);

	FUNC5(sbi->nls_disk);
	FUNC5(sbi->nls_io);

	if (sbi->options.iocharset != fat_default_iocharset)
		FUNC3(sbi->options.iocharset);

	sb->s_fs_info = NULL;
	FUNC3(sbi);

	FUNC6();
}