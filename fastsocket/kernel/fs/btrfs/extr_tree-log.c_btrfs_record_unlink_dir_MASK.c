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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct TYPE_2__ {scalar_t__ last_unlink_trans; scalar_t__ logged_trans; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct btrfs_trans_handle *trans,
			     struct inode *dir, struct inode *inode,
			     int for_rename)
{
	/*
	 * when we're logging a file, if it hasn't been renamed
	 * or unlinked, and its inode is fully committed on disk,
	 * we don't have to worry about walking up the directory chain
	 * to log its parents.
	 *
	 * So, we use the last_unlink_trans field to put this transid
	 * into the file.  When the file is logged we check it and
	 * don't log the parents if the file is fully on disk.
	 */
	if (FUNC1(inode->i_mode))
		FUNC0(inode)->last_unlink_trans = trans->transid;

	/*
	 * if this directory was already logged any new
	 * names for this file/dir will get recorded
	 */
	FUNC2();
	if (FUNC0(dir)->logged_trans == trans->transid)
		return;

	/*
	 * if the inode we're about to unlink was logged,
	 * the log will be properly updated for any new names
	 */
	if (FUNC0(inode)->logged_trans == trans->transid)
		return;

	/*
	 * when renaming files across directories, if the directory
	 * there we're unlinking from gets fsync'd later on, there's
	 * no way to find the destination directory later and fsync it
	 * properly.  So, we have to be conservative and force commits
	 * so the new name gets discovered.
	 */
	if (for_rename)
		goto record;

	/* we can safely do the unlink without any special recording */
	return;

record:
	FUNC0(dir)->last_unlink_trans = trans->transid;
}