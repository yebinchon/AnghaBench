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
 int EXT4_EXT_ZERO_LEN ; 
 struct ext4_extent* FUNC0 (struct ext4_extent_header*) ; 
 scalar_t__ FUNC1 (struct ext4_ext_path*) ; 
 int FUNC2 (struct ext4_ext_path*) ; 
 void* FUNC3 (unsigned int) ; 
 void* FUNC4 (unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC8 (struct inode*,unsigned int,struct ext4_ext_path*) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned int FUNC10 (struct ext4_extent*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ext4_extent*) ; 
 scalar_t__ FUNC13 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC15 (struct ext4_extent*,scalar_t__) ; 
 int FUNC16 (struct inode*,struct ext4_ext_path*,struct ext4_extent*) ; 
 int FUNC17 (struct inode*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,unsigned long long,unsigned int) ; 
 unsigned int FUNC19 (struct inode*) ; 
 int FUNC20 (void*) ; 
 unsigned int FUNC21 (void*) ; 

__attribute__((used)) static int FUNC22(handle_t *handle,
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
	int ret = 0;
	int may_zeroout;

	FUNC18("ext4_ext_convert_to_initialized: inode %lu, logical"
		"block %llu, max_blocks %u\n", inode->i_ino,
		(unsigned long long)iblock, max_blocks);

	eof_block = (inode->i_size + inode->i_sb->s_blocksize - 1) >>
		inode->i_sb->s_blocksize_bits;
	if (eof_block < iblock + max_blocks)
		eof_block = iblock + max_blocks;

	depth = FUNC19(inode);
	eh = path[depth].p_hdr;
	ex = path[depth].p_ext;
	ee_block = FUNC21(ex->ee_block);
	ee_len = FUNC10(ex);
	allocated = ee_len - (iblock - ee_block);
	newblock = iblock - ee_block + FUNC13(ex);

	ex2 = ex;
	orig_ex.ee_block = ex->ee_block;
	orig_ex.ee_len   = FUNC3(ee_len);
	FUNC15(&orig_ex, FUNC13(ex));

	/*
	 * It is safe to convert extent to initialized via explicit
	 * zeroout only if extent is fully insde i_size or new_size.
	 */
	may_zeroout = ee_block + ee_len <= eof_block;

	err = FUNC9(handle, inode, path + depth);
	if (err)
		goto out;
	/* If extent has less than 2*EXT4_EXT_ZERO_LEN zerout directly */
	if (ee_len <= 2*EXT4_EXT_ZERO_LEN && may_zeroout) {
		err =  FUNC17(inode, &orig_ex);
		if (err)
			goto fix_extent_len;
		/* update the extent length and mark as initialized */
		ex->ee_block = orig_ex.ee_block;
		ex->ee_len   = orig_ex.ee_len;
		FUNC15(ex, FUNC13(&orig_ex));
		FUNC6(handle, inode, path + depth);
		/* zeroed the full extent */
		return allocated;
	}

	/* ex1: ee_block to iblock - 1 : uninitialized */
	if (iblock > ee_block) {
		ex1 = ex;
		ex1->ee_len = FUNC3(iblock - ee_block);
		FUNC12(ex1);
		FUNC6(handle, inode, path + depth);
		ex2 = &newex;
	}
	/*
	 * for sanity, update the length of the ex2 extent before
	 * we insert ex3, if ex1 is NULL. This is to avoid temporary
	 * overlap of blocks.
	 */
	if (!ex1 && allocated > max_blocks)
		ex2->ee_len = FUNC3(max_blocks);
	/* ex3: to ee_block + ee_len : uninitialised */
	if (allocated > max_blocks) {
		unsigned int newdepth;
		/* If extent has less than EXT4_EXT_ZERO_LEN zerout directly */
		if (allocated <= EXT4_EXT_ZERO_LEN && may_zeroout) {
			/*
			 * iblock == ee_block is handled by the zerouout
			 * at the beginning.
			 * Mark first half uninitialized.
			 * Mark second half initialized and zero out the
			 * initialized extent
			 */
			ex->ee_block = orig_ex.ee_block;
			ex->ee_len   = FUNC3(ee_len - allocated);
			FUNC12(ex);
			FUNC15(ex, FUNC13(&orig_ex));
			FUNC6(handle, inode, path + depth);

			ex3 = &newex;
			ex3->ee_block = FUNC4(iblock);
			FUNC15(ex3, newblock);
			ex3->ee_len = FUNC3(allocated);
			err = FUNC11(handle, inode, path,
							ex3, 0);
			if (err == -ENOSPC) {
				err =  FUNC17(inode, &orig_ex);
				if (err)
					goto fix_extent_len;
				ex->ee_block = orig_ex.ee_block;
				ex->ee_len   = orig_ex.ee_len;
				FUNC15(ex,
					FUNC13(&orig_ex));
				FUNC6(handle, inode, path + depth);
				/* blocks available from iblock */
				return allocated;

			} else if (err)
				goto fix_extent_len;

			/*
			 * We need to zero out the second half because
			 * an fallocate request can update file size and
			 * converting the second half to initialized extent
			 * implies that we can leak some junk data to user
			 * space.
			 */
			err =  FUNC17(inode, ex3);
			if (err) {
				/*
				 * We should actually mark the
				 * second half as uninit and return error
				 * Insert would have changed the extent
				 */
				depth = FUNC19(inode);
				FUNC7(path);
				path = FUNC8(inode,
								iblock, path);
				if (FUNC1(path)) {
					err = FUNC2(path);
					return err;
				}
				/* get the second half extent details */
				ex = path[depth].p_ext;
				err = FUNC9(handle, inode,
								path + depth);
				if (err)
					return err;
				FUNC12(ex);
				FUNC6(handle, inode, path + depth);
				return err;
			}

			/* zeroed the second half */
			return allocated;
		}
		ex3 = &newex;
		ex3->ee_block = FUNC4(iblock + max_blocks);
		FUNC15(ex3, newblock + max_blocks);
		ex3->ee_len = FUNC3(allocated - max_blocks);
		FUNC12(ex3);
		err = FUNC11(handle, inode, path, ex3, flags);
		if (err == -ENOSPC && may_zeroout) {
			err =  FUNC17(inode, &orig_ex);
			if (err)
				goto fix_extent_len;
			/* update the extent length and mark as initialized */
			ex->ee_block = orig_ex.ee_block;
			ex->ee_len   = orig_ex.ee_len;
			FUNC15(ex, FUNC13(&orig_ex));
			FUNC6(handle, inode, path + depth);
			/* zeroed the full extent */
			/* blocks available from iblock */
			return allocated;

		} else if (err)
			goto fix_extent_len;
		/*
		 * The depth, and hence eh & ex might change
		 * as part of the insert above.
		 */
		newdepth = FUNC19(inode);
		/*
		 * update the extent length after successful insert of the
		 * split extent
		 */
		ee_len -= FUNC10(ex3);
		orig_ex.ee_len = FUNC3(ee_len);
		may_zeroout = ee_block + ee_len <= eof_block;

		depth = newdepth;
		FUNC7(path);
		path = FUNC8(inode, iblock, path);
		if (FUNC1(path)) {
			err = FUNC2(path);
			goto out;
		}
		eh = path[depth].p_hdr;
		ex = path[depth].p_ext;
		if (ex2 != &newex)
			ex2 = ex;

		err = FUNC9(handle, inode, path + depth);
		if (err)
			goto out;

		allocated = max_blocks;

		/* If extent has less than EXT4_EXT_ZERO_LEN and we are trying
		 * to insert a extent in the middle zerout directly
		 * otherwise give the extent a chance to merge to left
		 */
		if (FUNC20(orig_ex.ee_len) <= EXT4_EXT_ZERO_LEN &&
			iblock != ee_block && may_zeroout) {
			err =  FUNC17(inode, &orig_ex);
			if (err)
				goto fix_extent_len;
			/* update the extent length and mark as initialized */
			ex->ee_block = orig_ex.ee_block;
			ex->ee_len   = orig_ex.ee_len;
			FUNC15(ex, FUNC13(&orig_ex));
			FUNC6(handle, inode, path + depth);
			/* zero out the first half */
			/* blocks available from iblock */
			return allocated;
		}
	}
	/*
	 * If there was a change of depth as part of the
	 * insertion of ex3 above, we need to update the length
	 * of the ex1 extent again here
	 */
	if (ex1 && ex1 != ex) {
		ex1 = ex;
		ex1->ee_len = FUNC3(iblock - ee_block);
		FUNC12(ex1);
		FUNC6(handle, inode, path + depth);
		ex2 = &newex;
	}
	/* ex2: iblock to iblock + maxblocks-1 : initialised */
	ex2->ee_block = FUNC4(iblock);
	FUNC15(ex2, newblock);
	ex2->ee_len = FUNC3(allocated);
	if (ex2 != ex)
		goto insert;
	/*
	 * New (initialized) extent starts from the first block
	 * in the current extent. i.e., ex2 == ex
	 * We have to see if it can be merged with the extent
	 * on the left.
	 */
	if (ex2 > FUNC0(eh)) {
		/*
		 * To merge left, pass "ex2 - 1" to try_to_merge(),
		 * since it merges towards right _only_.
		 */
		ret = FUNC16(inode, path, ex2 - 1);
		if (ret) {
			err = FUNC5(handle, inode, path);
			if (err)
				goto out;
			depth = FUNC19(inode);
			ex2--;
		}
	}
	/*
	 * Try to Merge towards right. This might be required
	 * only when the whole extent is being written to.
	 * i.e. ex2 == ex and ex3 == NULL.
	 */
	if (!ex3) {
		ret = FUNC16(inode, path, ex2);
		if (ret) {
			err = FUNC5(handle, inode, path);
			if (err)
				goto out;
		}
	}
	/* Mark modified extent as dirty */
	err = FUNC6(handle, inode, path + depth);
	goto out;
insert:
	err = FUNC11(handle, inode, path, &newex, flags);
	if (err == -ENOSPC && may_zeroout) {
		err =  FUNC17(inode, &orig_ex);
		if (err)
			goto fix_extent_len;
		/* update the extent length and mark as initialized */
		ex->ee_block = orig_ex.ee_block;
		ex->ee_len   = orig_ex.ee_len;
		FUNC15(ex, FUNC13(&orig_ex));
		FUNC6(handle, inode, path + depth);
		/* zero out the first half */
		return allocated;
	} else if (err)
		goto fix_extent_len;
out:
	FUNC14(inode, path);
	return err ? err : allocated;

fix_extent_len:
	ex->ee_block = orig_ex.ee_block;
	ex->ee_len   = orig_ex.ee_len;
	FUNC15(ex, FUNC13(&orig_ex));
	FUNC12(ex);
	FUNC6(handle, inode, path + depth);
	return err;
}