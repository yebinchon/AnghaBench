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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_extent_header {scalar_t__ eh_entries; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; int /*<<< orphan*/  ee_len; } ;
struct ext4_ext_path {int /*<<< orphan*/ * p_bh; struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  unsigned short ext4_lblk_t ;

/* Variables and functions */
 int EIO ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,char*,unsigned short,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ext4_extent* FUNC3 (struct ext4_extent_header*) ; 
 struct ext4_extent* FUNC4 (struct ext4_extent_header*) ; 
 int EXT_MAX_BLOCKS ; 
 unsigned short block ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned short FUNC9 (struct ext4_extent*) ; 
 scalar_t__ FUNC10 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_extent*) ; 
 unsigned short FUNC12 (struct ext4_extent*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC14 (struct ext4_extent*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct inode*,struct ext4_extent*,unsigned short,unsigned short) ; 
 struct ext4_extent_header* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,unsigned short,unsigned int,...) ; 
 int FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,int) ; 
 unsigned short FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct ext4_extent*,struct ext4_extent*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct ext4_extent*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(handle_t *handle, struct inode *inode,
		struct ext4_ext_path *path, ext4_lblk_t start,
		ext4_lblk_t end)
{
	int err = 0, correct_index = 0;
	int depth = FUNC19(inode), credits;
	struct ext4_extent_header *eh;
	ext4_lblk_t a, b;
	unsigned num;
	ext4_lblk_t ex_ee_block;
	unsigned short ex_ee_len;
	unsigned uninitialized = 0;
	struct ext4_extent *ex;

	/* the header must be checked already in ext4_ext_remove_space() */
	FUNC18("truncate since %u in leaf to %u\n", start, end);
	if (!path[depth].p_hdr)
		path[depth].p_hdr = FUNC17(path[depth].p_bh);
	eh = path[depth].p_hdr;
	if (FUNC24(path[depth].p_hdr == NULL)) {
		FUNC1(inode, "path[%d].p_hdr == NULL", depth);
		return -EIO;
	}
	/* find where to start removing */
	ex = FUNC4(eh);

	ex_ee_block = FUNC21(ex->ee_block);
	ex_ee_len = FUNC9(ex);

	while (ex >= FUNC3(eh) &&
			ex_ee_block + ex_ee_len > start) {

		if (FUNC10(ex))
			uninitialized = 1;
		else
			uninitialized = 0;

		FUNC18("remove ext %u:[%d]%d\n", ex_ee_block,
			 uninitialized, ex_ee_len);
		path[depth].p_ext = ex;

		a = ex_ee_block > start ? ex_ee_block : start;
		b = ex_ee_block+ex_ee_len - 1 < end ?
			ex_ee_block+ex_ee_len - 1 : end;

		FUNC18("  border %u:%u\n", a, b);

		/* If this extent is beyond the end of the hole, skip it */
		if (end < ex_ee_block) {
			ex--;
			ex_ee_block = FUNC21(ex->ee_block);
			ex_ee_len = FUNC9(ex);
			continue;
		} else if (b != ex_ee_block + ex_ee_len - 1) {
			FUNC1(inode,
					 "can not handle truncate %u:%u "
					 "on extent %u:%u",
					 start, end, ex_ee_block,
					 ex_ee_block + ex_ee_len - 1);
			err = -EIO;
			goto out;
		} else if (a != ex_ee_block) {
			/* remove tail of the extent */
			num = a - ex_ee_block;
		} else {
			/* remove whole extent: excellent! */
			num = 0;
		}
		/*
		 * 3 for leaf, sb, and inode plus 2 (bmap and group
		 * descriptor) for each block group; assume two block
		 * groups plus ex_ee_len/blocks_per_block_group for
		 * the worst case
		 */
		credits = 7 + 2*(ex_ee_len/FUNC0(inode->i_sb));
		if (ex == FUNC3(eh)) {
			correct_index = 1;
			credits += (FUNC19(inode)) + 1;
		}
		credits += FUNC2(inode->i_sb);

		err = FUNC15(handle, inode, credits);
		if (err)
			goto out;

		err = FUNC8(handle, inode, path + depth);
		if (err)
			goto out;

		err = FUNC16(handle, inode, ex, a, b);
		if (err)
			goto out;

		if (num == 0)
			/* this extent is removed; mark slot entirely unused */
			FUNC14(ex, 0);

		ex->ee_len = FUNC5(num);
		/*
		 * Do not mark uninitialized if all the blocks in the
		 * extent have been removed.
		 */
		if (uninitialized && num)
			FUNC11(ex);
		/*
		 * If the extent was completely released,
		 * we need to remove it from the leaf
		 */
		if (num == 0) {
			if (end != EXT_MAX_BLOCKS - 1) {
				/*
				 * For hole punching, we need to scoot all the
				 * extents up when an extent is removed so that
				 * we dont have blank extents in the middle
				 */
				FUNC22(ex, ex+1, (FUNC4(eh) - ex) *
					sizeof(struct ext4_extent));

				/* Now get rid of the one at the end */
				FUNC23(FUNC4(eh), 0,
					sizeof(struct ext4_extent));
			}
			FUNC20(&eh->eh_entries, -1);
		}

		err = FUNC7(handle, inode, path + depth);
		if (err)
			goto out;

		FUNC18("new extent: %u:%u:%llu\n", block, num,
				FUNC12(ex));
		ex--;
		ex_ee_block = FUNC21(ex->ee_block);
		ex_ee_len = FUNC9(ex);
	}

	if (correct_index && eh->eh_entries)
		err = FUNC6(handle, inode, path);

	/* if this leaf is free, then we should
	 * remove it from index block above */
	if (err == 0 && eh->eh_entries == 0 && path[depth].p_bh != NULL)
		err = FUNC13(handle, inode, path + depth);

out:
	return err;
}