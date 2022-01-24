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
struct cifsInodeInfo {int clientCanCacheAll; int clientCanCacheRead; int /*<<< orphan*/  vfs_inode; } ;
typedef  int __u32 ;

/* Variables and functions */
 int OPLOCK_EXCLUSIVE ; 
 int OPLOCK_READ ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *) ; 

void FUNC1(struct cifsInodeInfo *cinode, __u32 oplock)
{
	oplock &= 0xF;

	if (oplock == OPLOCK_EXCLUSIVE) {
		cinode->clientCanCacheAll = true;
		cinode->clientCanCacheRead = true;
		FUNC0(1, "Exclusive Oplock granted on inode %p",
		     &cinode->vfs_inode);
	} else if (oplock == OPLOCK_READ) {
		cinode->clientCanCacheAll = false;
		cinode->clientCanCacheRead = true;
		FUNC0(1, "Level II Oplock granted on inode %p",
		    &cinode->vfs_inode);
	} else {
		cinode->clientCanCacheAll = false;
		cinode->clientCanCacheRead = false;
	}
}