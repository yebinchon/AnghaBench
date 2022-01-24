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
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 unsigned int BTRFS_INODE_COMPRESS ; 
 unsigned int BTRFS_INODE_NOCOMPRESS ; 
 unsigned int BTRFS_INODE_NODATACOW ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 

void FUNC2(struct inode *inode, struct inode *dir)
{
	unsigned int flags;

	if (!dir)
		return;

	flags = FUNC0(dir)->flags;

	if (flags & BTRFS_INODE_NOCOMPRESS) {
		FUNC0(inode)->flags &= ~BTRFS_INODE_COMPRESS;
		FUNC0(inode)->flags |= BTRFS_INODE_NOCOMPRESS;
	} else if (flags & BTRFS_INODE_COMPRESS) {
		FUNC0(inode)->flags &= ~BTRFS_INODE_NOCOMPRESS;
		FUNC0(inode)->flags |= BTRFS_INODE_COMPRESS;
	}

	if (flags & BTRFS_INODE_NODATACOW)
		FUNC0(inode)->flags |= BTRFS_INODE_NODATACOW;

	FUNC1(inode);
}