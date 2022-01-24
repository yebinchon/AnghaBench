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
struct inode {int i_size; TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {void* ee_len; void* ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  unsigned int ext4_lblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int s_blocksize; int s_blocksize_bits; } ;

/* Variables and functions */
 int ENOSPC ; 
 int EXT4_EXT_DATA_VALID ; 
 scalar_t__ FUNC0 (struct ext4_ext_path*) ; 
 int FUNC1 (struct ext4_ext_path*) ; 
 void* FUNC2 (unsigned int) ; 
 void* FUNC3 (unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC6 (struct inode*,unsigned int,struct ext4_ext_path*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned int FUNC8 (struct ext4_extent*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ext4_extent*) ; 
 scalar_t__ FUNC11 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC13 (struct ext4_extent*,scalar_t__) ; 
 int FUNC14 (struct inode*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 unsigned int FUNC16 (struct inode*) ; 
 unsigned int FUNC17 (void*) ; 

__attribute__((used)) static int FUNC18(handle_t *handle,
					struct inode *inode,
					struct ext4_ext_path *path,
					ext4_lblk_t iblock,
					unsigned int max_blocks,
					int flags)
{
	struct ext4_extent *ex, newex, orig_ex;
	struct ext4_extent *ex1 = NULL;
	struct ext4_extent *ex2 = NULL;
	struct ext4_extent *ex3 = NULL;
	struct ext4_extent_header *eh;
	ext4_lblk_t ee_block, eof_block;
	unsigned int allocated, ee_len, depth;
	ext4_fsblk_t newblock;
	int err = 0;
	int may_zeroout;

	FUNC15("ext4_split_unwritten_extents: inode %lu, logical"
		"block %llu, max_blocks %u\n", inode->i_ino,
		(unsigned long long)iblock, max_blocks);

	eof_block = (inode->i_size + inode->i_sb->s_blocksize - 1) >>
		inode->i_sb->s_blocksize_bits;
	if (eof_block < iblock + max_blocks)
		eof_block = iblock + max_blocks;

	depth = FUNC16(inode);
	eh = path[depth].p_hdr;
	ex = path[depth].p_ext;
	ee_block = FUNC17(ex->ee_block);
	ee_len = FUNC8(ex);
	allocated = ee_len - (iblock - ee_block);
	newblock = iblock - ee_block + FUNC11(ex);

	ex2 = ex;
	orig_ex.ee_block = ex->ee_block;
	orig_ex.ee_len   = FUNC2(ee_len);
	FUNC13(&orig_ex, FUNC11(ex));

	/*
	 * It is safe to convert extent to initialized via explicit
	 * zeroout only if extent is fully insde i_size or new_size.
	 */
	may_zeroout = ee_block + ee_len <= eof_block;

	/*
 	 * If the uninitialized extent begins at the same logical
 	 * block where the write begins, and the write completely
 	 * covers the extent, then we don't need to split it.
 	 */
	if ((iblock == ee_block) && (allocated <= max_blocks))
		return allocated;

	err = FUNC7(handle, inode, path + depth);
	if (err)
		goto out;
	/* ex1: ee_block to iblock - 1 : uninitialized */
	if (iblock > ee_block) {
		ex1 = ex;
		ex1->ee_len = FUNC2(iblock - ee_block);
		FUNC10(ex1);
		FUNC4(handle, inode, path + depth);
		ex2 = &newex;
	}
	/*
	 * for sanity, update the length of the ex2 extent before
	 * we insert ex3, if ex1 is NULL. This is to avoid temporary
	 * overlap of blocks.
	 */
	if (!ex1 && allocated > max_blocks)
		ex2->ee_len = FUNC2(max_blocks);
	/* ex3: to ee_block + ee_len : uninitialised */
	if (allocated > max_blocks) {
		unsigned int newdepth;
		ex3 = &newex;
		ex3->ee_block = FUNC3(iblock + max_blocks);
		FUNC13(ex3, newblock + max_blocks);
		ex3->ee_len = FUNC2(allocated - max_blocks);
		FUNC10(ex3);
		err = FUNC9(handle, inode, path, ex3, flags);
		if (err == -ENOSPC && may_zeroout) {
			/*
			 * This is different from the upstream, because we
			 * need only a flag to say that the extent contains
			 * the actual data.
			 *
			 * If the extent contains valid data, which can only
			 * happen if AIO races with fallocate, then we got
			 * here from ext4_convert_unwritten_extents_dio().
			 * So we have to be careful not to zeroout valid data
			 * in the extent.
			 *
			 * To avoid it, we only zeroout the ex3 and extend the
			 * extent which is going to become initialized to cover
			 * ex3 as well. and continue as we would if only
			 * split in two was required.
			 */
			if (flags & EXT4_EXT_DATA_VALID) {
				err =  FUNC14(inode, ex3);
				if (err)
					goto fix_extent_len;
				max_blocks = allocated;
				ex2->ee_len = FUNC2(max_blocks);
				goto skip;
			}
			err =  FUNC14(inode, &orig_ex);
			if (err)
				goto fix_extent_len;
			/* update the extent length and mark as initialized */
			ex->ee_block = orig_ex.ee_block;
			ex->ee_len   = orig_ex.ee_len;
			FUNC13(ex, FUNC11(&orig_ex));
			FUNC4(handle, inode, path + depth);
			/* zeroed the full extent */
			/* blocks available from iblock */
			return allocated;

		} else if (err)
			goto fix_extent_len;
		/*
		 * The depth, and hence eh & ex might change
		 * as part of the insert above.
		 */
		newdepth = FUNC16(inode);
		/*
		 * update the extent length after successful insert of the
		 * split extent
		 */
		ee_len -= FUNC8(ex3);
		orig_ex.ee_len = FUNC2(ee_len);
		may_zeroout = ee_block + ee_len <= eof_block;

		depth = newdepth;
		FUNC5(path);
		path = FUNC6(inode, iblock, path);
		if (FUNC0(path)) {
			err = FUNC1(path);
			goto out;
		}
		eh = path[depth].p_hdr;
		ex = path[depth].p_ext;
		if (ex2 != &newex)
			ex2 = ex;

		err = FUNC7(handle, inode, path + depth);
		if (err)
			goto out;

		allocated = max_blocks;
	}
skip:
	/*
	 * If there was a change of depth as part of the
	 * insertion of ex3 above, we need to update the length
	 * of the ex1 extent again here
	 */
	if (ex1 && ex1 != ex) {
		ex1 = ex;
		ex1->ee_len = FUNC2(iblock - ee_block);
		FUNC10(ex1);
		FUNC4(handle, inode, path + depth);
		ex2 = &newex;
	}
	/*
	 * ex2: iblock to iblock + maxblocks-1 : to be direct IO written,
	 * uninitialised still.
	 */
	ex2->ee_block = FUNC3(iblock);
	FUNC13(ex2, newblock);
	ex2->ee_len = FUNC2(allocated);
	FUNC10(ex2);
	if (ex2 != ex)
		goto insert;
	/* Mark modified extent as dirty */
	err = FUNC4(handle, inode, path + depth);
	FUNC15("out here\n");
	goto out;
insert:
	err = FUNC9(handle, inode, path, &newex, flags);
	if (err == -ENOSPC && may_zeroout) {
		err =  FUNC14(inode, &orig_ex);
		if (err)
			goto fix_extent_len;
		/* update the extent length and mark as initialized */
		ex->ee_block = orig_ex.ee_block;
		ex->ee_len   = orig_ex.ee_len;
		FUNC13(ex, FUNC11(&orig_ex));
		FUNC4(handle, inode, path + depth);
		/* zero out the first half */
		return allocated;
	} else if (err)
		goto fix_extent_len;
out:
	FUNC12(inode, path);
	return err ? err : allocated;

fix_extent_len:
	ex->ee_block = orig_ex.ee_block;
	ex->ee_len   = orig_ex.ee_len;
	FUNC13(ex, FUNC11(&orig_ex));
	FUNC10(ex);
	FUNC4(handle, inode, path + depth);
	return err;
}