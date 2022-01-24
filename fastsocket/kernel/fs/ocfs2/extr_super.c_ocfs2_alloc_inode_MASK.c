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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ocfs2_inode_info {struct inode vfs_inode; int /*<<< orphan*/  ip_jinode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct inode*) ; 
 struct ocfs2_inode_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_inode_cachep ; 

__attribute__((used)) static struct inode *FUNC2(struct super_block *sb)
{
	struct ocfs2_inode_info *oi;

	oi = FUNC1(ocfs2_inode_cachep, GFP_NOFS);
	if (!oi)
		return NULL;

	FUNC0(&oi->ip_jinode, &oi->vfs_inode);
	return &oi->vfs_inode;
}