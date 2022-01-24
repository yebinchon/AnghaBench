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
typedef  scalar_t__ uint32_t ;
struct udf_sb_info {int /*<<< orphan*/  s_alloc_mutex; int /*<<< orphan*/  s_partition; struct udf_part_map* s_partmaps; } ;
struct udf_part_map {scalar_t__ s_partition_len; } ;
struct udf_bitmap {struct buffer_head** s_block_bitmap; } ;
struct super_block {int s_blocksize_bits; int s_blocksize; } ;
struct spaceBitmapDesc {int dummy; } ;
struct kernel_lb_addr {size_t partitionReferenceNum; scalar_t__ logicalBlockNum; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*,struct udf_bitmap*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,...) ; 
 scalar_t__ FUNC7 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int) ; 

__attribute__((used)) static void FUNC9(struct super_block *sb,
				   struct inode *inode,
				   struct udf_bitmap *bitmap,
				   struct kernel_lb_addr *bloc,
				   uint32_t offset,
				   uint32_t count)
{
	struct udf_sb_info *sbi = FUNC0(sb);
	struct buffer_head *bh = NULL;
	struct udf_part_map *partmap;
	unsigned long block;
	unsigned long block_group;
	unsigned long bit;
	unsigned long i;
	int bitmap_nr;
	unsigned long overflow;

	FUNC3(&sbi->s_alloc_mutex);
	partmap = &sbi->s_partmaps[bloc->partitionReferenceNum];
	if (bloc->logicalBlockNum < 0 ||
	    (bloc->logicalBlockNum + count) >
		partmap->s_partition_len) {
		FUNC6("%d < %d || %d + %d > %d\n",
			  bloc->logicalBlockNum, 0, bloc->logicalBlockNum,
			  count, partmap->s_partition_len);
		goto error_return;
	}

	block = bloc->logicalBlockNum + offset +
		(sizeof(struct spaceBitmapDesc) << 3);

	do {
		overflow = 0;
		block_group = block >> (sb->s_blocksize_bits + 3);
		bit = block % (sb->s_blocksize << 3);

		/*
		* Check to see if we are freeing blocks across a group boundary.
		*/
		if (bit + count > (sb->s_blocksize << 3)) {
			overflow = bit + count - (sb->s_blocksize << 3);
			count -= overflow;
		}
		bitmap_nr = FUNC1(sb, bitmap, block_group);
		if (bitmap_nr < 0)
			goto error_return;

		bh = bitmap->s_block_bitmap[bitmap_nr];
		for (i = 0; i < count; i++) {
			if (FUNC7(bit + i, bh->b_data)) {
				FUNC6("bit %ld already set\n", bit + i);
				FUNC6("byte=%2x\n",
					((char *)bh->b_data)[(bit + i) >> 3]);
			} else {
				if (inode)
					FUNC8(inode, 1);
				FUNC5(sb, sbi->s_partition, 1);
			}
		}
		FUNC2(bh);
		if (overflow) {
			block += count;
			count = overflow;
		}
	} while (overflow);

error_return:
	FUNC4(&sbi->s_alloc_mutex);
}