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
struct nilfs_sb_info {int /*<<< orphan*/  s_ifile; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_state; } ;
struct nilfs_inode {int dummy; } ;
struct inode {struct super_block* i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_2__ {int /*<<< orphan*/  mi_entry_size; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_INODE_DIRTY ; 
 int /*<<< orphan*/  NILFS_I_NEW ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nilfs_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nilfs_inode* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct nilfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct inode *inode, struct buffer_head *ibh)
{
	ino_t ino = inode->i_ino;
	struct nilfs_inode_info *ii = FUNC0(inode);
	struct super_block *sb = inode->i_sb;
	struct nilfs_sb_info *sbi = FUNC2(sb);
	struct nilfs_inode *raw_inode;

	raw_inode = FUNC4(sbi->s_ifile, ino, ibh);

	/* The buffer is guarded with lock_buffer() by the caller */
	if (FUNC8(NILFS_I_NEW, &ii->i_state))
		FUNC3(raw_inode, 0, FUNC1(sbi->s_ifile)->mi_entry_size);
	FUNC7(NILFS_I_INODE_DIRTY, &ii->i_state);

	FUNC6(inode, raw_inode, 0);
		/* XXX: call with has_bmap = 0 is a workaround to avoid
		   deadlock of bmap. This delays update of i_bmap to just
		   before writing */
	FUNC5(sbi->s_ifile, ino, ibh);
}