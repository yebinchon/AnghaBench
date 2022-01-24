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
typedef  scalar_t__ u32 ;
struct super_block {int s_dirt; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct affs_sb_info {scalar_t__ s_partition_size; scalar_t__ s_reserved; scalar_t__ s_bmap_bits; scalar_t__ s_last_bmap; int /*<<< orphan*/  s_bmlock; struct buffer_head* s_bmap_bh; struct affs_bm_info* s_bitmap; } ;
struct affs_bm_info {scalar_t__ bm_key; int /*<<< orphan*/  bm_free; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct affs_sb_info* FUNC0 (struct super_block*) ; 
 struct buffer_head* FUNC1 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 

void
FUNC11(struct super_block *sb, u32 block)
{
	struct affs_sb_info *sbi = FUNC0(sb);
	struct affs_bm_info *bm;
	struct buffer_head *bh;
	u32 blk, bmap, bit, mask, tmp;
	__be32 *data;

	FUNC10("AFFS: free_block(%u)\n", block);

	if (block > sbi->s_partition_size)
		goto err_range;

	blk     = block - sbi->s_reserved;
	bmap    = blk / sbi->s_bmap_bits;
	bit     = blk % sbi->s_bmap_bits;
	bm      = &sbi->s_bitmap[bmap];

	FUNC8(&sbi->s_bmlock);

	bh = sbi->s_bmap_bh;
	if (sbi->s_last_bmap != bmap) {
		FUNC2(bh);
		bh = FUNC1(sb, bm->bm_key);
		if (!bh)
			goto err_bh_read;
		sbi->s_bmap_bh = bh;
		sbi->s_last_bmap = bmap;
	}

	mask = 1 << (bit & 31);
	data = (__be32 *)bh->b_data + bit / 32 + 1;

	/* mark block free */
	tmp = FUNC5(*data);
	if (tmp & mask)
		goto err_free;
	*data = FUNC6(tmp | mask);

	/* fix checksum */
	tmp = FUNC5(*(__be32 *)bh->b_data);
	*(__be32 *)bh->b_data = FUNC6(tmp - mask);

	FUNC7(bh);
	sb->s_dirt = 1;
	bm->bm_free++;

	FUNC9(&sbi->s_bmlock);
	return;

err_free:
	FUNC4(sb,"affs_free_block","Trying to free block %u which is already free", block);
	FUNC9(&sbi->s_bmlock);
	return;

err_bh_read:
	FUNC3(sb,"affs_free_block","Cannot read bitmap block %u", bm->bm_key);
	sbi->s_bmap_bh = NULL;
	sbi->s_last_bmap = ~0;
	FUNC9(&sbi->s_bmlock);
	return;

err_range:
	FUNC3(sb, "affs_free_block","Block %u outside partition", block);
	return;
}