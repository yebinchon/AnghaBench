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
struct super_block {int s_blocksize_bits; } ;
struct msdos_sb_info {int sec_per_clus; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ mmu_private; int /*<<< orphan*/  i_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct msdos_sb_info* FUNC2 (struct super_block*) ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,scalar_t__,scalar_t__*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,struct super_block*,scalar_t__) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static inline int FUNC9(struct inode *inode, sector_t iblock,
				  unsigned long *max_blocks,
				  struct buffer_head *bh_result, int create)
{
	struct super_block *sb = inode->i_sb;
	struct msdos_sb_info *sbi = FUNC2(sb);
	unsigned long mapped_blocks;
	sector_t phys;
	int err, offset;

	err = FUNC4(inode, iblock, &phys, &mapped_blocks, create);
	if (err)
		return err;
	if (phys) {
		FUNC6(bh_result, sb, phys);
		*max_blocks = FUNC7(mapped_blocks, *max_blocks);
		return 0;
	}
	if (!create)
		return 0;

	if (iblock != FUNC1(inode)->mmu_private >> sb->s_blocksize_bits) {
		FUNC5(sb, "corrupted file size (i_pos %lld, %lld)",
			FUNC1(inode)->i_pos, FUNC1(inode)->mmu_private);
		return -EIO;
	}

	offset = (unsigned long)iblock & (sbi->sec_per_clus - 1);
	if (!offset) {
		/* TODO: multiple cluster allocation would be desirable. */
		err = FUNC3(inode);
		if (err)
			return err;
	}
	/* available blocks on this cluster */
	mapped_blocks = sbi->sec_per_clus - offset;

	*max_blocks = FUNC7(mapped_blocks, *max_blocks);
	FUNC1(inode)->mmu_private += *max_blocks << sb->s_blocksize_bits;

	err = FUNC4(inode, iblock, &phys, &mapped_blocks, create);
	if (err)
		return err;

	FUNC0(!phys);
	FUNC0(*max_blocks != mapped_blocks);
	FUNC8(bh_result);
	FUNC6(bh_result, sb, phys);

	return 0;
}