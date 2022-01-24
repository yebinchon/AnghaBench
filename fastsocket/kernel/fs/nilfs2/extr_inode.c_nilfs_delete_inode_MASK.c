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
struct super_block {int dummy; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_inode_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ nrpages; } ;
struct inode {TYPE_1__ i_data; struct super_block* i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 struct nilfs_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_TI_SYNC ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_inode_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(struct inode *inode)
{
	struct nilfs_transaction_info ti;
	struct super_block *sb = inode->i_sb;
	struct nilfs_inode_info *ii = FUNC1(inode);

	if (FUNC10(FUNC3(inode))) {
		if (inode->i_data.nrpages)
			FUNC9(&inode->i_data, 0);
		FUNC2(inode);
		return;
	}
	FUNC6(sb, &ti, 0); /* never fails */

	if (inode->i_data.nrpages)
		FUNC9(&inode->i_data, 0);

	FUNC8(ii, 0);
	FUNC4(inode);
	/* nilfs_free_inode() marks inode buffer dirty */
	if (FUNC0(inode))
		FUNC5(NILFS_TI_SYNC);
	FUNC7(sb);
	/* May construct a logical segment and may fail in sync mode.
	   But delete_inode has no return value. */
}