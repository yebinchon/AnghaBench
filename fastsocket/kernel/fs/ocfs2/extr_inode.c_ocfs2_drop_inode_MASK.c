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
struct ocfs2_inode_info {int ip_flags; scalar_t__ ip_blkno; } ;
struct inode {int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_MAYBE_ORPHANED ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct inode *inode)
{
	struct ocfs2_inode_info *oi = FUNC0(inode);

	FUNC4();

	FUNC3(0, "Drop inode %llu, nlink = %u, ip_flags = 0x%x\n",
	     (unsigned long long)oi->ip_blkno, inode->i_nlink, oi->ip_flags);

	if (oi->ip_flags & OCFS2_INODE_MAYBE_ORPHANED)
		FUNC1(inode);
	else
		FUNC2(inode);

	FUNC5();
}