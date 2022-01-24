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
struct ufs_sb_private_info {scalar_t__ s_apb; unsigned int s_fpb; int /*<<< orphan*/  s_bsize; } ;
struct ufs_buffer_head {int dummy; } ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DIRECT_BLOCK ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
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
 int /*<<< orphan*/  FUNC14 (struct inode*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct ufs_sb_private_info*,void*) ; 

__attribute__((used)) static int FUNC16(struct inode *inode, u64 offset, void *p)
{
	struct super_block * sb;
	struct ufs_sb_private_info * uspi;
	struct ufs_buffer_head * ind_ubh;
	void *ind;
	u64 tmp, indirect_block, i, frag_to_free;
	unsigned free_count;
	int retry;

	FUNC2("ENTER: ino %lu, offset %llu, p: %p\n",
	     inode->i_ino, (unsigned long long)offset, p);

	FUNC0(!p);
		
	sb = inode->i_sb;
	uspi = FUNC3(sb)->s_uspi;

	frag_to_free = 0;
	free_count = 0;
	retry = 0;
	
	tmp = FUNC13(sb, p);
	if (!tmp)
		return 0;
	ind_ubh = FUNC6(sb, tmp, uspi->s_bsize);
	if (tmp != FUNC13(sb, p)) {
		FUNC7 (ind_ubh);
		return 1;
	}
	if (!ind_ubh) {
		FUNC12(uspi, p);
		return 0;
	}

	indirect_block = (DIRECT_BLOCK > offset) ? (DIRECT_BLOCK - offset) : 0;
	for (i = indirect_block; i < uspi->s_apb; i++) {
		ind = FUNC9(uspi, ind_ubh, i);
		tmp = FUNC13(sb, ind);
		if (!tmp)
			continue;

		FUNC12(uspi, ind);
		FUNC10(ind_ubh);
		if (free_count == 0) {
			frag_to_free = tmp;
			free_count = uspi->s_fpb;
		} else if (free_count > 0 && frag_to_free == tmp - free_count)
			free_count += uspi->s_fpb;
		else {
			FUNC14 (inode, frag_to_free, free_count);
			frag_to_free = tmp;
			free_count = uspi->s_fpb;
		}

		FUNC4(inode);
	}

	if (free_count > 0) {
		FUNC14 (inode, frag_to_free, free_count);
	}
	for (i = 0; i < uspi->s_apb; i++)
		if (!FUNC15(uspi,
					  FUNC9(uspi, ind_ubh, i)))
			break;
	if (i >= uspi->s_apb) {
		tmp = FUNC13(sb, p);
		FUNC12(uspi, p);

		FUNC14 (inode, tmp, uspi->s_fpb);
		FUNC4(inode);
		FUNC5(ind_ubh);
		ind_ubh = NULL;
	}
	if (FUNC1(inode) && ind_ubh && FUNC8(ind_ubh))
		FUNC11(ind_ubh);
	FUNC7 (ind_ubh);
	
	FUNC2("EXIT: ino %lu\n", inode->i_ino);
	
	return retry;
}