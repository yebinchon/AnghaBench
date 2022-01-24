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
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_blkbits; struct super_block* i_sb; } ;
struct ext4_group_info {char* bb_counters; scalar_t__ bb_fragments; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {char* b_data; int /*<<< orphan*/  b_end_io; } ;
typedef  int ext4_group_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EXT4_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_group_info*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC9 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 struct ext4_group_info* FUNC10 (struct super_block*,int) ; 
 int FUNC11 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,struct buffer_head*,int,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head**) ; 
 struct buffer_head** FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,int) ; 
 char* FUNC25 (struct page*) ; 
 struct buffer_head* FUNC26 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC28 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC30 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC31 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC32(struct page *page, char *incore)
{
	ext4_group_t ngroups;
	int blocksize;
	int blocks_per_page;
	int groups_per_page;
	int err = 0;
	int i;
	ext4_group_t first_group;
	int first_block;
	struct super_block *sb;
	struct buffer_head *bhs;
	struct buffer_head **bh;
	struct inode *inode;
	char *data;
	char *bitmap;
	struct ext4_group_info *grinfo;

	FUNC22(1, "init page %lu\n", page->index);

	inode = page->mapping->host;
	sb = inode->i_sb;
	ngroups = FUNC11(sb);
	blocksize = 1 << inode->i_blkbits;
	blocks_per_page = PAGE_CACHE_SIZE / blocksize;

	groups_per_page = blocks_per_page >> 1;
	if (groups_per_page == 0)
		groups_per_page = 1;

	/* allocate buffer_heads to read bitmaps */
	if (groups_per_page > 1) {
		err = -ENOMEM;
		i = sizeof(struct buffer_head *) * groups_per_page;
		bh = FUNC20(i, GFP_NOFS);
		if (bh == NULL)
			goto out;
	} else
		bh = &bhs;

	first_group = page->index * blocks_per_page / 2;

	/* read all groups the page covers into the cache */
	for (i = 0; i < groups_per_page; i++) {
		struct ext4_group_desc *desc;

		if (first_group + i >= ngroups)
			break;

		grinfo = FUNC10(sb, first_group + i);
		/*
		 * If page is uptodate then we came here after online resize
		 * which added some new uninitialized group info structs, so
		 * we must skip all initialized uptodate buddies on the page,
		 * which may be currently in use by an allocating task.
		 */
		if (FUNC2(page) && !FUNC1(grinfo)) {
			bh[i] = NULL;
			continue;
		}

		err = -EIO;
		desc = FUNC9(sb, first_group + i, NULL);
		if (desc == NULL)
			goto out;

		err = -ENOMEM;
		bh[i] = FUNC26(sb, FUNC8(sb, desc));
		if (bh[i] == NULL)
			goto out;

		if (FUNC4(bh[i]))
			continue;

		FUNC21(bh[i]);
		if (FUNC4(bh[i])) {
			FUNC30(bh[i]);
			continue;
		}
		FUNC13(sb, first_group + i);
		if (desc->bg_flags & FUNC7(EXT4_BG_BLOCK_UNINIT)) {
			FUNC12(sb, bh[i],
						first_group + i, desc);
			FUNC27(bh[i]);
			FUNC28(bh[i]);
			FUNC17(sb, first_group + i);
			FUNC30(bh[i]);
			continue;
		}
		FUNC17(sb, first_group + i);
		if (FUNC6(bh[i])) {
			/*
			 * if not uninit if bh is uptodate,
			 * bitmap is also uptodate
			 */
			FUNC27(bh[i]);
			FUNC30(bh[i]);
			continue;
		}
		FUNC18(bh[i]);
		/*
		 * submit the buffer_head for read. We can
		 * safely mark the bitmap as uptodate now.
		 * We do it here so the bitmap uptodate bit
		 * get set with buffer lock held.
		 */
		FUNC27(bh[i]);
		bh[i]->b_end_io = end_buffer_read_sync;
		FUNC29(READ, bh[i]);
		FUNC22(1, "read bitmap for group %u\n", first_group + i);
	}

	/* wait for I/O completion */
	for (i = 0; i < groups_per_page; i++)
		if (bh[i])
			FUNC31(bh[i]);

	err = -EIO;
	for (i = 0; i < groups_per_page; i++)
		if (bh[i] && !FUNC6(bh[i]))
			goto out;

	err = 0;
	first_block = page->index * blocks_per_page;
	for (i = 0; i < blocks_per_page; i++) {
		int group;

		group = (first_block + i) >> 1;
		if (group >= ngroups)
			break;

		if (!bh[group - first_group])
			/* skip initialized uptodate buddy */
			continue;

		/*
		 * data carry information regarding this
		 * particular group in the format specified
		 * above
		 *
		 */
		data = FUNC25(page) + (i * blocksize);
		bitmap = bh[group - first_group]->b_data;

		/*
		 * We place the buddy block and bitmap block
		 * close together
		 */
		if ((first_block + i) & 1) {
			/* this is block of buddy */
			FUNC0(incore == NULL);
			FUNC22(1, "put buddy for group %u in page %lu/%x\n",
				group, page->index, i * blocksize);
			grinfo = FUNC10(sb, group);
			grinfo->bb_fragments = 0;
			FUNC24(grinfo->bb_counters, 0,
			       sizeof(*grinfo->bb_counters) *
				(sb->s_blocksize_bits+2));
			/*
			 * incore got set to the group block bitmap below
			 */
			FUNC13(sb, group);
			/* init the buddy */
			FUNC24(data, 0xff, blocksize);
			FUNC14(sb, data, incore, group);
			FUNC17(sb, group);
			incore = NULL;
		} else {
			/* this is block of bitmap */
			FUNC0(incore != NULL);
			FUNC22(1, "put bitmap for group %u in page %lu/%x\n",
				group, page->index, i * blocksize);

			/* see comments in ext4_mb_put_pa() */
			FUNC13(sb, group);
			FUNC23(data, bitmap, blocksize);

			/* mark all preallocated blks used in in-core bitmap */
			FUNC16(sb, data, group);
			FUNC15(sb, data, group);
			FUNC17(sb, group);

			/* set incore so that the buddy information can be
			 * generated using this
			 */
			incore = data;
		}
	}
	FUNC3(page);

out:
	if (bh) {
		for (i = 0; i < groups_per_page; i++)
			FUNC5(bh[i]);
		if (bh != &bhs)
			FUNC19(bh);
	}
	return err;
}