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
struct ufs_sb_private_info {scalar_t__ s_apbshift; scalar_t__ s_apb; int /*<<< orphan*/  s_fpb; int /*<<< orphan*/  s_bsize; } ;
struct ufs_buffer_head {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 scalar_t__ DIRECT_BLOCK ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_buffer_head*) ; 
 struct ufs_buffer_head* FUNC5 (struct super_block*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_buffer_head*) ; 
 scalar_t__ FUNC7 (struct ufs_buffer_head*) ; 
 void* FUNC8 (struct ufs_sb_private_info*,struct ufs_buffer_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ufs_buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct ufs_buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct ufs_sb_private_info*,void*) ; 
 scalar_t__ FUNC12 (struct super_block*,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ufs_sb_private_info*,void*) ; 
 int FUNC15 (struct inode*,scalar_t__,void*) ; 

__attribute__((used)) static int FUNC16(struct inode *inode, u64 offset, void *p)
{
	struct super_block * sb;
	struct ufs_sb_private_info * uspi;
	struct ufs_buffer_head *dind_bh;
	u64 i, tmp, dindirect_block;
	void *dind;
	int retry = 0;
	
	FUNC1("ENTER: ino %lu\n", inode->i_ino);
	
	sb = inode->i_sb;
	uspi = FUNC2(sb)->s_uspi;

	dindirect_block = (DIRECT_BLOCK > offset) 
		? ((DIRECT_BLOCK - offset) >> uspi->s_apbshift) : 0;
	retry = 0;
	
	tmp = FUNC12(sb, p);
	if (!tmp)
		return 0;
	dind_bh = FUNC5(sb, tmp, uspi->s_bsize);
	if (tmp != FUNC12(sb, p)) {
		FUNC6 (dind_bh);
		return 1;
	}
	if (!dind_bh) {
		FUNC11(uspi, p);
		return 0;
	}

	for (i = dindirect_block ; i < uspi->s_apb ; i++) {
		dind = FUNC8(uspi, dind_bh, i);
		tmp = FUNC12(sb, dind);
		if (!tmp)
			continue;
		retry |= FUNC15 (inode, offset + (i << uspi->s_apbshift), dind);
		FUNC9(dind_bh);
	}

	for (i = 0; i < uspi->s_apb; i++)
		if (!FUNC14(uspi,
					  FUNC8(uspi, dind_bh, i)))
			break;
	if (i >= uspi->s_apb) {
		tmp = FUNC12(sb, p);
		FUNC11(uspi, p);

		FUNC13(inode, tmp, uspi->s_fpb);
		FUNC3(inode);
		FUNC4(dind_bh);
		dind_bh = NULL;
	}
	if (FUNC0(inode) && dind_bh && FUNC7(dind_bh))
		FUNC10(dind_bh);
	FUNC6 (dind_bh);
	
	FUNC1("EXIT: ino %lu\n", inode->i_ino);
	
	return retry;
}