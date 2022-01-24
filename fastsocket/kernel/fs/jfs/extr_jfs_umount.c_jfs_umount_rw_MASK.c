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
struct jfs_sb_info {TYPE_1__* direct_inode; int /*<<< orphan*/  ipimap; int /*<<< orphan*/  ipbmap; struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_CLEAN ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct jfs_log*,int) ; 
 int FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 

int FUNC7(struct super_block *sb)
{
	struct jfs_sb_info *sbi = FUNC0(sb);
	struct jfs_log *log = sbi->log;

	if (!log)
		return 0;

	/*
	 * close log:
	 *
	 * remove file system from log active file system list.
	 */
	FUNC4(log, 1);

	/*
	 * Make sure all metadata makes it to disk
	 */
	FUNC1(sbi->ipbmap);
	FUNC2(sbi->ipimap);

	/*
	 * Note that we have to do this even if sync_blockdev() will
	 * do exactly the same a few instructions later:  We can't
	 * mark the superblock clean before everything is flushed to
	 * disk.
	 */
	FUNC3(sbi->direct_inode->i_mapping);

	FUNC6(sb, FM_CLEAN);

	return FUNC5(sb);
}