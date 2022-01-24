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
struct super_block {int /*<<< orphan*/  s_fs_info; } ;
struct autofs_sb_info {TYPE_1__* symlink; int /*<<< orphan*/  symlink_bitmap; int /*<<< orphan*/  oz_pgrp; int /*<<< orphan*/  catatonic; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 unsigned int AUTOFS_MAX_SYMLINKS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC8(struct super_block *sb)
{
	struct autofs_sb_info *sbi = FUNC3(sb);
	unsigned int n;

	/*
	 * In the event of a failure in get_sb_nodev the superblock
	 * info is not present so nothing else has been setup, so
	 * just call kill_anon_super when we are called from
	 * deactivate_super.
	 */
	if (!sbi)
		goto out_kill_sb;

	if (!sbi->catatonic)
		FUNC1(sbi); /* Free wait queues, close pipe */

	FUNC6(sbi->oz_pgrp);

	FUNC2(sbi);
	for (n = 0; n < AUTOFS_MAX_SYMLINKS; n++) {
		if (FUNC7(n, sbi->symlink_bitmap))
			FUNC4(sbi->symlink[n].data);
	}

	FUNC4(sb->s_fs_info);

out_kill_sb:
	FUNC0(("autofs: shutting down\n"));
	FUNC5(sb);
}