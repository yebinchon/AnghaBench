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
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_sc_info {void* sc_dsync_end; void* sc_dsync_start; struct nilfs_inode_info* sc_dsync_inode; int /*<<< orphan*/  sc_flags; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_inode_lock; int /*<<< orphan*/  s_nilfs; } ;
struct nilfs_inode_info {int /*<<< orphan*/  i_state; } ;
struct inode {int dummy; } ;
typedef  void* loff_t ;

/* Variables and functions */
 int EROFS ; 
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_I_BUSY ; 
 int /*<<< orphan*/  NILFS_I_INODE_DIRTY ; 
 int /*<<< orphan*/  NILFS_I_QUEUED ; 
 struct nilfs_sb_info* FUNC1 (struct super_block*) ; 
 struct nilfs_sc_info* FUNC2 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  NILFS_SC_UNCLOSED ; 
 int /*<<< orphan*/  SC_LSEG_DSYNC ; 
 int /*<<< orphan*/  STRICT_ORDER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nilfs_sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nilfs_sc_info*) ; 
 scalar_t__ FUNC6 (struct nilfs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_sb_info*,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct super_block *sb, struct inode *inode,
				  loff_t start, loff_t end)
{
	struct nilfs_sb_info *sbi = FUNC1(sb);
	struct nilfs_sc_info *sci = FUNC2(sbi);
	struct nilfs_inode_info *ii;
	struct nilfs_transaction_info ti;
	int err = 0;

	if (!sci)
		return -EROFS;

	FUNC7(sbi, &ti, 0);

	ii = FUNC0(inode);
	if (FUNC11(NILFS_I_INODE_DIRTY, &ii->i_state) ||
	    FUNC6(sbi, STRICT_ORDER) ||
	    FUNC11(NILFS_SC_UNCLOSED, &sci->sc_flags) ||
	    FUNC3(sbi->s_nilfs)) {
		FUNC8(sbi);
		err = FUNC5(sci);
		return err;
	}

	FUNC9(&sbi->s_inode_lock);
	if (!FUNC11(NILFS_I_QUEUED, &ii->i_state) &&
	    !FUNC11(NILFS_I_BUSY, &ii->i_state)) {
		FUNC10(&sbi->s_inode_lock);
		FUNC8(sbi);
		return 0;
	}
	FUNC10(&sbi->s_inode_lock);
	sci->sc_dsync_inode = ii;
	sci->sc_dsync_start = start;
	sci->sc_dsync_end = end;

	err = FUNC4(sci, SC_LSEG_DSYNC);

	FUNC8(sbi);
	return err;
}