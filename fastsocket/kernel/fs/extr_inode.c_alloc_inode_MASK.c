#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_1__* s_op; } ;
struct inode {TYPE_3__* i_sb; } ;
struct TYPE_6__ {TYPE_2__* s_op; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* destroy_inode ) (struct inode*) ;} ;
struct TYPE_4__ {struct inode* (* alloc_inode ) (struct super_block*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  inode_cachep ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inode*) ; 
 struct inode* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC6(struct super_block *sb)
{
	struct inode *inode;

	if (sb->s_op->alloc_inode)
		inode = sb->s_op->alloc_inode(sb);
	else
		inode = FUNC1(inode_cachep, GFP_KERNEL);

	if (!inode)
		return NULL;

	if (FUNC5(FUNC0(sb, inode))) {
		if (inode->i_sb->s_op->destroy_inode)
			inode->i_sb->s_op->destroy_inode(inode);
		else
			FUNC2(inode_cachep, inode);
		return NULL;
	}

	return inode;
}