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
typedef  scalar_t__ u64 ;
struct ufs_sb_private_info {scalar_t__ s_apb; scalar_t__ s_2apb; scalar_t__ s_2apbshift; int /*<<< orphan*/  s_fpb; int /*<<< orphan*/  s_bsize; } ;
struct ufs_inode_info {int dummy; } ;
struct ufs_buffer_head {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 scalar_t__ DIRECT_BLOCK ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct ufs_inode_info* FUNC2 (struct inode*) ; 
 scalar_t__ UFS_NDADDR ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  UFS_TIND_BLOCK ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_buffer_head*) ; 
 struct ufs_buffer_head* FUNC6 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ufs_buffer_head*) ; 
 scalar_t__ FUNC8 (struct ufs_buffer_head*) ; 
 void* FUNC9 (struct ufs_sb_private_info*,struct ufs_buffer_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ufs_buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct ufs_buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct ufs_sb_private_info*,void*) ; 
 scalar_t__ FUNC13 (struct super_block*,void*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC15 (struct ufs_sb_private_info*,struct ufs_inode_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ufs_sb_private_info*,void*) ; 
 int FUNC17 (struct inode*,scalar_t__,void*) ; 

__attribute__((used)) static int FUNC18(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC3(sb)->s_uspi;
	struct ufs_inode_info *ufsi = FUNC2(inode);
	struct ufs_buffer_head * tind_bh;
	u64 tindirect_block, tmp, i;
	void *tind, *p;
	int retry;
	
	FUNC1("ENTER: ino %lu\n", inode->i_ino);

	retry = 0;
	
	tindirect_block = (DIRECT_BLOCK > (UFS_NDADDR + uspi->s_apb + uspi->s_2apb))
		? ((DIRECT_BLOCK - UFS_NDADDR - uspi->s_apb - uspi->s_2apb) >> uspi->s_2apbshift) : 0;

	p = FUNC15(uspi, ufsi, UFS_TIND_BLOCK);
	if (!(tmp = FUNC13(sb, p)))
		return 0;
	tind_bh = FUNC6 (sb, tmp, uspi->s_bsize);
	if (tmp != FUNC13(sb, p)) {
		FUNC7 (tind_bh);
		return 1;
	}
	if (!tind_bh) {
		FUNC12(uspi, p);
		return 0;
	}

	for (i = tindirect_block ; i < uspi->s_apb ; i++) {
		tind = FUNC9(uspi, tind_bh, i);
		retry |= FUNC17(inode, UFS_NDADDR + 
			uspi->s_apb + ((i + 1) << uspi->s_2apbshift), tind);
		FUNC10(tind_bh);
	}
	for (i = 0; i < uspi->s_apb; i++)
		if (!FUNC16(uspi,
					  FUNC9(uspi, tind_bh, i)))
			break;
	if (i >= uspi->s_apb) {
		tmp = FUNC13(sb, p);
		FUNC12(uspi, p);

		FUNC14(inode, tmp, uspi->s_fpb);
		FUNC4(inode);
		FUNC5(tind_bh);
		tind_bh = NULL;
	}
	if (FUNC0(inode) && tind_bh && FUNC8(tind_bh))
		FUNC11(tind_bh);
	FUNC7 (tind_bh);
	
	FUNC1("EXIT: ino %lu\n", inode->i_ino);
	return retry;
}