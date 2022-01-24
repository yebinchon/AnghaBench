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
typedef  int u64 ;
struct ufs_sb_private_info {int s_fpbmask; unsigned int s_fpb; } ;
struct ufs_inode_info {int /*<<< orphan*/  i_lastfrag; } ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int DIRECT_FRAGMENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 struct ufs_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  UFS_NDIR_FRAGMENT ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_sb_private_info*,void*) ; 
 unsigned int FUNC6 (struct super_block*,void*) ; 
 int FUNC7 (int) ; 
 unsigned int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,unsigned int,int) ; 
 void* FUNC11 (struct ufs_sb_private_info*,struct ufs_inode_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,char*,char*) ; 

__attribute__((used)) static int FUNC13(struct inode *inode)
{
	struct ufs_inode_info *ufsi = FUNC1(inode);
	struct super_block * sb;
	struct ufs_sb_private_info * uspi;
	void *p;
	u64 frag1, frag2, frag3, frag4, block1, block2;
	unsigned frag_to_free, free_count;
	unsigned i, tmp;
	int retry;
	
	FUNC0("ENTER: ino %lu\n", inode->i_ino);

	sb = inode->i_sb;
	uspi = FUNC2(sb)->s_uspi;
	
	frag_to_free = 0;
	free_count = 0;
	retry = 0;
	
	frag1 = DIRECT_FRAGMENT;
	frag4 = FUNC4(u32, UFS_NDIR_FRAGMENT, ufsi->i_lastfrag);
	frag2 = ((frag1 & uspi->s_fpbmask) ? ((frag1 | uspi->s_fpbmask) + 1) : frag1);
	frag3 = frag4 & ~uspi->s_fpbmask;
	block1 = block2 = 0;
	if (frag2 > frag3) {
		frag2 = frag4;
		frag3 = frag4 = 0;
	} else if (frag2 < frag3) {
		block1 = FUNC8 (frag2);
		block2 = FUNC8 (frag3);
	}

	FUNC0("ino %lu, frag1 %llu, frag2 %llu, block1 %llu, block2 %llu,"
	     " frag3 %llu, frag4 %llu\n", inode->i_ino,
	     (unsigned long long)frag1, (unsigned long long)frag2,
	     (unsigned long long)block1, (unsigned long long)block2,
	     (unsigned long long)frag3, (unsigned long long)frag4);

	if (frag1 >= frag2)
		goto next1;		

	/*
	 * Free first free fragments
	 */
	p = FUNC11(uspi, ufsi, FUNC8(frag1));
	tmp = FUNC6(sb, p);
	if (!tmp )
		FUNC12 (sb, "ufs_trunc_direct", "internal error");
	frag2 -= frag1;
	frag1 = FUNC7 (frag1);

	FUNC10(inode, tmp + frag1, frag2);
	FUNC3(inode);
	frag_to_free = tmp + frag1;

next1:
	/*
	 * Free whole blocks
	 */
	for (i = block1 ; i < block2; i++) {
		p = FUNC11(uspi, ufsi, i);
		tmp = FUNC6(sb, p);
		if (!tmp)
			continue;
		FUNC5(uspi, p);

		if (free_count == 0) {
			frag_to_free = tmp;
			free_count = uspi->s_fpb;
		} else if (free_count > 0 && frag_to_free == tmp - free_count)
			free_count += uspi->s_fpb;
		else {
			FUNC9 (inode, frag_to_free, free_count);
			frag_to_free = tmp;
			free_count = uspi->s_fpb;
		}
		FUNC3(inode);
	}
	
	if (free_count > 0)
		FUNC9 (inode, frag_to_free, free_count);

	if (frag3 >= frag4)
		goto next3;

	/*
	 * Free last free fragments
	 */
	p = FUNC11(uspi, ufsi, FUNC8(frag3));
	tmp = FUNC6(sb, p);
	if (!tmp )
		FUNC12(sb, "ufs_truncate_direct", "internal error");
	frag4 = FUNC7 (frag4);
	FUNC5(uspi, p);

	FUNC10 (inode, tmp, frag4);
	FUNC3(inode);
 next3:

	FUNC0("EXIT: ino %lu\n", inode->i_ino);
	return retry;
}