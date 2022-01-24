#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_operations {void (* delete_inode ) (struct inode*) ;} ;
struct inode {int i_state; int /*<<< orphan*/  i_hash; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_sb_list; int /*<<< orphan*/  i_list; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr_inodes; } ;
struct TYPE_3__ {struct super_operations* s_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I_CLEAR ; 
 int I_FREEING ; 
 int I_NEW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inode_lock ; 
 TYPE_2__ inodes_stat ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

void FUNC13(struct inode *inode)
{
	const struct super_operations *op = inode->i_sb->s_op;

	FUNC6(&inode->i_list);
	FUNC6(&inode->i_sb_list);
	FUNC1(inode->i_state & I_NEW);
	inode->i_state |= I_FREEING;
	inodes_stat.nr_inodes--;
	FUNC9(&inode_lock);

	FUNC7(inode);

	if (op->delete_inode) {
		void (*delete)(struct inode *) = op->delete_inode;
		if (!FUNC5(inode))
			FUNC11(inode);
		/* Filesystems implementing their own
		 * s_op->delete_inode are required to call
		 * truncate_inode_pages and clear_inode()
		 * internally */
		delete(inode);
	} else {
		FUNC10(&inode->i_data, 0);
		FUNC2(inode);
	}
	FUNC8(&inode_lock);
	FUNC4(&inode->i_hash);
	FUNC9(&inode_lock);
	FUNC12(inode);
	FUNC0(inode->i_state != I_CLEAR);
	FUNC3(inode);
}