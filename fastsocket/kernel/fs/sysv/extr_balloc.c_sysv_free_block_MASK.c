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
typedef  int /*<<< orphan*/  sysv_zone_t ;
struct sysv_sb_info {scalar_t__ s_type; unsigned int s_firstdatazone; unsigned int s_nzones; unsigned int s_flc_size; int /*<<< orphan*/  s_free_blocks; void** s_bcache_count; int /*<<< orphan*/ * s_bcache; scalar_t__ s_block_base; } ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  void* __fs16 ;

/* Variables and functions */
 scalar_t__ FSTYPE_AFS ; 
 struct sysv_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (struct sysv_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 unsigned int FUNC4 (struct sysv_sb_info*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysv_sb_info*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 (struct sysv_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 struct buffer_head* FUNC13 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*) ; 

void FUNC16(struct super_block * sb, sysv_zone_t nr)
{
	struct sysv_sb_info * sbi = FUNC0(sb);
	struct buffer_head * bh;
	sysv_zone_t *blocks = sbi->s_bcache;
	unsigned count;
	unsigned block = FUNC6(sbi, nr);

	/*
	 * This code does not work at all for AFS (it has a bitmap
	 * free list).  As AFS is supposed to be read-only no one
	 * should call this for an AFS filesystem anyway...
	 */
	if (sbi->s_type == FSTYPE_AFS)
		return;

	if (block < sbi->s_firstdatazone || block >= sbi->s_nzones) {
		FUNC12("sysv_free_block: trying to free block not in datazone\n");
		return;
	}

	FUNC8(sb);
	count = FUNC4(sbi, *sbi->s_bcache_count);

	if (count > sbi->s_flc_size) {
		FUNC12("sysv_free_block: flc_count > flc_size\n");
		FUNC15(sb);
		return;
	}
	/* If the free list head in super-block is full, it is copied
	 * into this block being freed, ditto if it's completely empty
	 * (applies only on Coherent).
	 */
	if (count == sbi->s_flc_size || count == 0) {
		block += sbi->s_block_base;
		bh = FUNC13(sb, block);
		if (!bh) {
			FUNC12("sysv_free_block: getblk() failed\n");
			FUNC15(sb);
			return;
		}
		FUNC11(bh->b_data, 0, sb->s_blocksize);
		*(__fs16*)bh->b_data = FUNC2(sbi, count);
		FUNC10(FUNC7(sb,bh), blocks, count * sizeof(sysv_zone_t));
		FUNC9(bh);
		FUNC14(bh);
		FUNC1(bh);
		count = 0;
	}
	sbi->s_bcache[count++] = nr;

	*sbi->s_bcache_count = FUNC2(sbi, count);
	FUNC5(sbi, sbi->s_free_blocks, 1);
	FUNC3(sb);
	FUNC15(sb);
}