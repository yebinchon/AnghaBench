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
struct autofs_sb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct autofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 

void FUNC6(struct super_block *sb)
{
	struct autofs_sb_info *sbi = FUNC3(sb);

	/*
	 * In the event of a failure in get_sb_nodev the superblock
	 * info is not present so nothing else has been setup, so
	 * just call kill_anon_super when we are called from
	 * deactivate_super.
	 */
	if (!sbi)
		goto out_kill_sb;

	/* Free wait queues, close pipe */
	FUNC1(sbi);

	/* Clean up and release dangling references */
	FUNC2(sbi);

	sb->s_fs_info = NULL;
	FUNC4(sbi);

out_kill_sb:
	FUNC0("shutting down");
	FUNC5(sb);
}