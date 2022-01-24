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
struct ubifs_inode {int flags; } ;
struct inode {int i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UBIFS_COMPR_FL ; 
 int UBIFS_DIRSYNC_FL ; 
 int UBIFS_SYNC_FL ; 
 struct ubifs_inode* FUNC1 (struct inode const*) ; 

__attribute__((used)) static int FUNC2(const struct inode *dir, int mode)
{
	int flags;
	const struct ubifs_inode *ui = FUNC1(dir);

	if (!FUNC0(dir->i_mode))
		/*
		 * The parent is not a directory, which means that an extended
		 * attribute inode is being created. No flags.
		 */
		return 0;

	flags = ui->flags & (UBIFS_COMPR_FL | UBIFS_SYNC_FL | UBIFS_DIRSYNC_FL);
	if (!FUNC0(mode))
		/* The "DIRSYNC" flag only applies to directories */
		flags &= ~UBIFS_DIRSYNC_FL;
	return flags;
}