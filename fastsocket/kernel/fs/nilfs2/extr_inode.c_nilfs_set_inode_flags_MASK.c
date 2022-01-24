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
struct inode {int i_flags; int /*<<< orphan*/  i_mapping; } ;
struct TYPE_2__ {unsigned int i_flags; } ;

/* Variables and functions */
 unsigned int NILFS_APPEND_FL ; 
 unsigned int NILFS_DIRSYNC_FL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 unsigned int NILFS_IMMUTABLE_FL ; 
 unsigned int NILFS_NOATIME_FL ; 
 unsigned int NILFS_SYNC_FL ; 
 int S_APPEND ; 
 int S_DIRSYNC ; 
 int S_IMMUTABLE ; 
 int S_NOATIME ; 
 int S_SYNC ; 
 int __GFP_FS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

void FUNC3(struct inode *inode)
{
	unsigned int flags = FUNC0(inode)->i_flags;

	inode->i_flags &= ~(S_SYNC | S_APPEND | S_IMMUTABLE | S_NOATIME |
			    S_DIRSYNC);
	if (flags & NILFS_SYNC_FL)
		inode->i_flags |= S_SYNC;
	if (flags & NILFS_APPEND_FL)
		inode->i_flags |= S_APPEND;
	if (flags & NILFS_IMMUTABLE_FL)
		inode->i_flags |= S_IMMUTABLE;
#ifndef NILFS_ATIME_DISABLE
	if (flags & NILFS_NOATIME_FL)
#endif
		inode->i_flags |= S_NOATIME;
	if (flags & NILFS_DIRSYNC_FL)
		inode->i_flags |= S_DIRSYNC;
	FUNC2(inode->i_mapping,
			     FUNC1(inode->i_mapping) & ~__GFP_FS);
}