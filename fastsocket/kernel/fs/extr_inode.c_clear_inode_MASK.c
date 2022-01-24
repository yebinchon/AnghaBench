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
struct TYPE_4__ {int nrpages; int /*<<< orphan*/  tree_lock; } ;
struct inode {int i_state; scalar_t__ i_cdev; int /*<<< orphan*/  i_mode; scalar_t__ i_bdev; TYPE_3__* i_sb; TYPE_1__ i_data; } ;
struct TYPE_6__ {TYPE_2__* s_op; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* clear_inode ) (struct inode*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I_CLEAR ; 
 int I_FREEING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

void FUNC12(struct inode *inode)
{
	FUNC7();
	FUNC6(inode);

	/*
	 * We have to cycle tree_lock here because reclaim can be still in the
	 * process of removing the last page (in __delete_from_page_cache())
	 * and we must not free mapping under it.
	 */
	FUNC8(&inode->i_data.tree_lock);
	FUNC0(inode->i_data.nrpages);
	FUNC9(&inode->i_data.tree_lock);
	FUNC0(!(inode->i_state & I_FREEING));
	FUNC0(inode->i_state & I_CLEAR);
	FUNC5(inode);
	FUNC11(inode);
	if (inode->i_sb->s_op->clear_inode)
		inode->i_sb->s_op->clear_inode(inode);
	if (FUNC1(inode->i_mode) && inode->i_bdev)
		FUNC3(inode);
	if (FUNC2(inode->i_mode) && inode->i_cdev)
		FUNC4(inode);
	inode->i_state = I_CLEAR;
}