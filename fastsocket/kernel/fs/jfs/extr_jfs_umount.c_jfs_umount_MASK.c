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
struct jfs_sb_info {TYPE_1__* direct_inode; struct inode* ipimap; struct inode* ipaimap; struct inode* ipaimap2; struct jfs_log* log; struct inode* ipbmap; } ;
struct jfs_log {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_CLEAN ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct jfs_log*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 

int FUNC9(struct super_block *sb)
{
	struct jfs_sb_info *sbi = FUNC0(sb);
	struct inode *ipbmap = sbi->ipbmap;
	struct inode *ipimap = sbi->ipimap;
	struct inode *ipaimap = sbi->ipaimap;
	struct inode *ipaimap2 = sbi->ipaimap2;
	struct jfs_log *log;
	int rc = 0;

	FUNC6("UnMount JFS: sb:0x%p", sb);

	/*
	 *	update superblock and close log
	 *
	 * if mounted read-write and log based recovery was enabled
	 */
	if ((log = sbi->log))
		/*
		 * Wait for outstanding transactions to be written to log:
		 */
		FUNC5(log, 1);

	/*
	 * close fileset inode allocation map (aka fileset inode)
	 */
	FUNC3(ipimap, 0);

	FUNC2(ipimap);
	sbi->ipimap = NULL;

	/*
	 * close secondary aggregate inode allocation map
	 */
	ipaimap2 = sbi->ipaimap2;
	if (ipaimap2) {
		FUNC3(ipaimap2, 0);
		FUNC2(ipaimap2);
		sbi->ipaimap2 = NULL;
	}

	/*
	 * close aggregate inode allocation map
	 */
	ipaimap = sbi->ipaimap;
	FUNC3(ipaimap, 0);
	FUNC2(ipaimap);
	sbi->ipaimap = NULL;

	/*
	 * close aggregate block allocation map
	 */
	FUNC1(ipbmap, 0);

	FUNC2(ipbmap);
	sbi->ipimap = NULL;

	/*
	 * Make sure all metadata makes it to disk before we mark
	 * the superblock as clean
	 */
	FUNC4(sbi->direct_inode->i_mapping);

	/*
	 * ensure all file system file pages are propagated to their
	 * home blocks on disk (and their in-memory buffer pages are
	 * invalidated) BEFORE updating file system superblock state
	 * (to signify file system is unmounted cleanly, and thus in
	 * consistent state) and log superblock active file system
	 * list (to signify skip logredo()).
	 */
	if (log) {		/* log = NULL if read-only mount */
		FUNC8(sb, FM_CLEAN);

		/*
		 * close log:
		 *
		 * remove file system from log active file system list.
		 */
		rc = FUNC7(sb);
	}
	FUNC6("UnMount JFS Complete: rc = %d", rc);
	return rc;
}