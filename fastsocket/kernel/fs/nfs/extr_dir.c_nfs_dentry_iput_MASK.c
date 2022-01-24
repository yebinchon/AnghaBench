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
struct dentry {int d_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  cache_validity; } ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALID_DATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 

__attribute__((used)) static void FUNC5(struct dentry *dentry, struct inode *inode)
{
	if (FUNC1(inode->i_mode))
		/* drop any readdir cache as it could easily be old */
		FUNC0(inode)->cache_validity |= NFS_INO_INVALID_DATA;

	if (dentry->d_flags & DCACHE_NFSFS_RENAMED) {
		FUNC2(inode);
		FUNC4(dentry, inode);
	}
	FUNC3(inode);
}