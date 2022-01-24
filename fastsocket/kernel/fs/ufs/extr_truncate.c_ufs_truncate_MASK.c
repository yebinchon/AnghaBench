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
struct ufs_sb_private_info {scalar_t__ s_apb; } ;
struct ufs_inode_info {int /*<<< orphan*/  i_lastfrag; } ;
struct super_block {int dummy; } ;
struct inode {int i_state; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  DIRECT_FRAGMENT ; 
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int I_DIRTY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 scalar_t__ UFS_DIND_BLOCK ; 
 struct ufs_inode_info* FUNC7 (struct inode*) ; 
 scalar_t__ UFS_IND_BLOCK ; 
 TYPE_1__* FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct ufs_sb_private_info*,struct ufs_inode_info*,scalar_t__) ; 
 int /*<<< orphan*/  ufs_getfrag_block ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int FUNC18 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct inode*) ; 
 int FUNC20 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 

int FUNC24(struct inode *inode, loff_t old_i_size)
{
	struct ufs_inode_info *ufsi = FUNC7(inode);
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC8(sb)->s_uspi;
	int retry, err = 0;
	
	FUNC6("ENTER: ino %lu, i_size: %llu, old_i_size: %llu\n",
	     inode->i_ino, (unsigned long long)FUNC11(inode),
	     (unsigned long long)old_i_size);

	if (!(FUNC5(inode->i_mode) || FUNC3(inode->i_mode) ||
	      FUNC4(inode->i_mode)))
		return -EINVAL;
	if (FUNC0(inode) || FUNC1(inode))
		return -EPERM;

	err = FUNC15(inode);

	if (err) {
		FUNC12(inode, old_i_size);
		goto out;
	}

	FUNC10(inode->i_mapping, inode->i_size, ufs_getfrag_block);

	FUNC13();
	while (1) {
		retry = FUNC19(inode);
		retry |= FUNC20(inode, UFS_IND_BLOCK,
					    FUNC16(uspi, ufsi,
								    UFS_IND_BLOCK));
		retry |= FUNC18(inode, UFS_IND_BLOCK + uspi->s_apb,
					     FUNC16(uspi, ufsi,
								     UFS_DIND_BLOCK));
		retry |= FUNC21 (inode);
		if (!retry)
			break;
		if (FUNC2(inode) && (inode->i_state & I_DIRTY))
			FUNC17 (inode);
		FUNC9(inode->i_mapping);
		FUNC23();
	}

	inode->i_mtime = inode->i_ctime = CURRENT_TIME_SEC;
	ufsi->i_lastfrag = DIRECT_FRAGMENT;
	FUNC22();
	FUNC14(inode);
out:
	FUNC6("EXIT: err %d\n", err);
	return err;
}