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
typedef  int u64 ;
struct ufs_sb_private_info {int s_fpbshift; int s_apbshift; int s_sbbase; int s_fpbmask; scalar_t__ s_apbmask; } ;
struct TYPE_3__ {long* u2_i_data; int /*<<< orphan*/ * i_data; } ;
struct ufs_inode_info {TYPE_1__ i_u1; } ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int sector_t ;
typedef  long __fs64 ;
typedef  int /*<<< orphan*/  __fs32 ;
struct TYPE_4__ {unsigned int s_flags; struct ufs_sb_private_info* s_uspi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 struct ufs_inode_info* FUNC1 (struct inode*) ; 
 TYPE_2__* FUNC2 (struct super_block*) ; 
 unsigned int UFS_TYPE_MASK ; 
 unsigned int UFS_TYPE_UFS2 ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct buffer_head* FUNC7 (struct super_block*,int) ; 
 int FUNC8 (struct inode*,int,int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static u64 FUNC10(struct inode *inode, sector_t frag)
{
	struct ufs_inode_info *ufsi = FUNC1(inode);
	struct super_block *sb = inode->i_sb;
	struct ufs_sb_private_info *uspi = FUNC2(sb)->s_uspi;
	u64 mask = (u64) uspi->s_apbmask>>uspi->s_fpbshift;
	int shift = uspi->s_apbshift-uspi->s_fpbshift;
	sector_t offsets[4], *p;
	int depth = FUNC8(inode, frag >> uspi->s_fpbshift, offsets);
	u64  ret = 0L;
	__fs32 block;
	__fs64 u2_block = 0L;
	unsigned flags = FUNC2(sb)->s_flags;
	u64 temp = 0L;

	FUNC0(": frag = %llu  depth = %d\n", (unsigned long long)frag, depth);
	FUNC0(": uspi->s_fpbshift = %d ,uspi->s_apbmask = %x, mask=%llx\n",
		uspi->s_fpbshift, uspi->s_apbmask,
		(unsigned long long)mask);

	if (depth == 0)
		return 0;

	p = offsets;

	FUNC6();
	if ((flags & UFS_TYPE_MASK) == UFS_TYPE_UFS2)
		goto ufs2;

	block = ufsi->i_u1.i_data[*p++];
	if (!block)
		goto out;
	while (--depth) {
		struct buffer_head *bh;
		sector_t n = *p++;

		bh = FUNC7(sb, uspi->s_sbbase + FUNC4(sb, block)+(n>>shift));
		if (!bh)
			goto out;
		block = ((__fs32 *) bh->b_data)[n & mask];
		FUNC3 (bh);
		if (!block)
			goto out;
	}
	ret = (u64) (uspi->s_sbbase + FUNC4(sb, block) + (frag & uspi->s_fpbmask));
	goto out;
ufs2:
	u2_block = ufsi->i_u1.u2_i_data[*p++];
	if (!u2_block)
		goto out;


	while (--depth) {
		struct buffer_head *bh;
		sector_t n = *p++;


		temp = (u64)(uspi->s_sbbase) + FUNC5(sb, u2_block);
		bh = FUNC7(sb, temp +(u64) (n>>shift));
		if (!bh)
			goto out;
		u2_block = ((__fs64 *)bh->b_data)[n & mask];
		FUNC3(bh);
		if (!u2_block)
			goto out;
	}
	temp = (u64)uspi->s_sbbase + FUNC5(sb, u2_block);
	ret = temp + (u64) (frag & uspi->s_fpbmask);

out:
	FUNC9();
	return ret;
}