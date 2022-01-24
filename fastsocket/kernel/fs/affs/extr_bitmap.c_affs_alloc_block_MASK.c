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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct super_block {int s_blocksize; int s_dirt; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct affs_sb_info {scalar_t__ s_partition_size; scalar_t__ s_reserved; scalar_t__ s_bmap_bits; int s_bmap_count; scalar_t__ s_last_bmap; int /*<<< orphan*/  s_bmlock; struct buffer_head* s_bmap_bh; struct affs_bm_info* s_bitmap; } ;
struct affs_bm_info {int /*<<< orphan*/  bm_key; scalar_t__ bm_free; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {int i_lastalloc; scalar_t__ i_pa_cnt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct affs_sb_info* FUNC1 (struct super_block*) ; 
 struct buffer_head* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

u32
FUNC13(struct inode *inode, u32 goal)
{
	struct super_block *sb;
	struct affs_sb_info *sbi;
	struct affs_bm_info *bm;
	struct buffer_head *bh;
	__be32 *data, *enddata;
	u32 blk, bmap, bit, mask, mask2, tmp;
	int i;

	sb = inode->i_sb;
	sbi = FUNC1(sb);

	FUNC12("AFFS: balloc(inode=%lu,goal=%u): ", inode->i_ino, goal);

	if (FUNC0(inode)->i_pa_cnt) {
		FUNC12("%d\n", FUNC0(inode)->i_lastalloc+1);
		FUNC0(inode)->i_pa_cnt--;
		return ++FUNC0(inode)->i_lastalloc;
	}

	if (!goal || goal > sbi->s_partition_size) {
		if (goal)
			FUNC5(sb, "affs_balloc", "invalid goal %d", goal);
		//if (!AFFS_I(inode)->i_last_block)
		//	affs_warning(sb, "affs_balloc", "no last alloc block");
		goal = sbi->s_reserved;
	}

	blk = goal - sbi->s_reserved;
	bmap = blk / sbi->s_bmap_bits;
	bm = &sbi->s_bitmap[bmap];

	FUNC10(&sbi->s_bmlock);

	if (bm->bm_free)
		goto find_bmap_bit;

find_bmap:
	/* search for the next bmap buffer with free bits */
	i = sbi->s_bmap_count;
	do {
		if (--i < 0)
			goto err_full;
		bmap++;
		bm++;
		if (bmap < sbi->s_bmap_count)
			continue;
		/* restart search at zero */
		bmap = 0;
		bm = sbi->s_bitmap;
	} while (!bm->bm_free);
	blk = bmap * sbi->s_bmap_bits;

find_bmap_bit:

	bh = sbi->s_bmap_bh;
	if (sbi->s_last_bmap != bmap) {
		FUNC3(bh);
		bh = FUNC2(sb, bm->bm_key);
		if (!bh)
			goto err_bh_read;
		sbi->s_bmap_bh = bh;
		sbi->s_last_bmap = bmap;
	}

	/* find an unused block in this bitmap block */
	bit = blk % sbi->s_bmap_bits;
	data = (__be32 *)bh->b_data + bit / 32 + 1;
	enddata = (__be32 *)((u8 *)bh->b_data + sb->s_blocksize);
	mask = ~0UL << (bit & 31);
	blk &= ~31UL;

	tmp = FUNC6(*data);
	if (tmp & mask)
		goto find_bit;

	/* scan the rest of the buffer */
	do {
		blk += 32;
		if (++data >= enddata)
			/* didn't find something, can only happen
			 * if scan didn't start at 0, try next bmap
			 */
			goto find_bmap;
	} while (!*data);
	tmp = FUNC6(*data);
	mask = ~0;

find_bit:
	/* finally look for a free bit in the word */
	bit = FUNC8(tmp & mask) - 1;
	blk += bit + sbi->s_reserved;
	mask2 = mask = 1 << (bit & 31);
	FUNC0(inode)->i_lastalloc = blk;

	/* prealloc as much as possible within this word */
	while ((mask2 <<= 1)) {
		if (!(tmp & mask2))
			break;
		FUNC0(inode)->i_pa_cnt++;
		mask |= mask2;
	}
	bm->bm_free -= FUNC0(inode)->i_pa_cnt + 1;

	*data = FUNC7(tmp & ~mask);

	/* fix checksum */
	tmp = FUNC6(*(__be32 *)bh->b_data);
	*(__be32 *)bh->b_data = FUNC7(tmp + mask);

	FUNC9(bh);
	sb->s_dirt = 1;

	FUNC11(&sbi->s_bmlock);

	FUNC12("%d\n", blk);
	return blk;

err_bh_read:
	FUNC4(sb,"affs_read_block","Cannot read bitmap block %u", bm->bm_key);
	sbi->s_bmap_bh = NULL;
	sbi->s_last_bmap = ~0;
err_full:
	FUNC11(&sbi->s_bmlock);
	FUNC12("failed\n");
	return 0;
}