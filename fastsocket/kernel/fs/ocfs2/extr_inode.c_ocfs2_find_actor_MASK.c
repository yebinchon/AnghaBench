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
struct ocfs2_inode_info {scalar_t__ ip_blkno; } ;
struct ocfs2_find_inode_args {scalar_t__ fi_blkno; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct inode*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, void *opaque)
{
	struct ocfs2_find_inode_args *args = NULL;
	struct ocfs2_inode_info *oi = FUNC0(inode);
	int ret = 0;

	FUNC2("(0x%p, %lu, 0x%p)\n", inode, inode->i_ino, opaque);

	args = opaque;

	FUNC1(!inode, "No inode in find actor!\n");

	if (oi->ip_blkno != args->fi_blkno)
		goto bail;

	ret = 1;
bail:
	FUNC3(ret);
	return ret;
}