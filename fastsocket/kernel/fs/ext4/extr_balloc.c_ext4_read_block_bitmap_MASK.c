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
struct super_block {int dummy; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_BG_BLOCK_UNINIT ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ext4_group_desc* FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct buffer_head*,int /*<<< orphan*/ ,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 struct buffer_head* FUNC13 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 

struct buffer_head *
FUNC18(struct super_block *sb, ext4_group_t block_group)
{
	struct ext4_group_desc *desc;
	struct buffer_head *bh = NULL;
	ext4_fsblk_t bitmap_blk;

	desc = FUNC6(sb, block_group, NULL);
	if (!desc)
		return NULL;
	bitmap_blk = FUNC4(sb, desc);
	bh = FUNC13(sb, bitmap_blk);
	if (FUNC16(!bh)) {
		FUNC5(sb, "Cannot read block bitmap - "
			    "block_group = %u, block_bitmap = %llu",
			    block_group, bitmap_blk);
		return NULL;
	}

	if (FUNC1(bh))
		return bh;

	FUNC11(bh);
	if (FUNC1(bh)) {
		FUNC17(bh);
		return bh;
	}
	FUNC8(sb, block_group);
	if (desc->bg_flags & FUNC3(EXT4_BG_BLOCK_UNINIT)) {
		FUNC7(sb, bh, block_group, desc);
		FUNC14(bh);
		FUNC15(bh);
		FUNC9(sb, block_group);
		FUNC17(bh);
		return bh;
	}
	FUNC9(sb, block_group);
	if (FUNC2(bh)) {
		/*
		 * if not uninit if bh is uptodate,
		 * bitmap is also uptodate
		 */
		FUNC14(bh);
		FUNC17(bh);
		return bh;
	}
	/*
	 * submit the buffer_head for read. We can
	 * safely mark the bitmap as uptodate now.
	 * We do it here so the bitmap uptodate bit
	 * get set with buffer lock held.
	 */
	FUNC14(bh);
	if (FUNC0(bh) < 0) {
		FUNC12(bh);
		FUNC5(sb, "Cannot read block bitmap - "
			    "block_group = %u, block_bitmap = %llu",
			    block_group, bitmap_blk);
		return NULL;
	}
	FUNC10(sb, desc, block_group, bh);
	/*
	 * file system mounted not to panic on error,
	 * continue with corrupt bitmap
	 */
	return bh;
}