#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {unsigned int i_ino; TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {void* ee_len; int /*<<< orphan*/  ee_block; int /*<<< orphan*/  ee_start_hi; int /*<<< orphan*/  ee_start_lo; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; int /*<<< orphan*/  p_block; } ;
struct ext4_allocation_request {unsigned short lleft; unsigned short lright; unsigned short goal; unsigned short logical; unsigned int len; scalar_t__ flags; struct inode* inode; int /*<<< orphan*/  pright; int /*<<< orphan*/  pleft; } ;
struct buffer_head {unsigned int b_blocknr; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_state; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  unsigned short ext4_lblk_t ;
struct TYPE_5__ {scalar_t__ flag; } ;
typedef  TYPE_2__ ext4_io_end_t ;
typedef  unsigned int ext4_fsblk_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_aiodio_unwritten; TYPE_2__* cur_aio_dio; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_New ; 
 scalar_t__ DIO_AIO_UNWRITTEN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,char*,unsigned short,int,int /*<<< orphan*/ ) ; 
 int EXT4_FREE_BLOCKS_NO_QUOT_UPDATE ; 
 int EXT4_GET_BLOCKS_CREATE ; 
 int EXT4_GET_BLOCKS_DELALLOC_RESERVE ; 
 int EXT4_GET_BLOCKS_DIO_CREATE_EXT ; 
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ; 
 int EXT4_GET_BLOCKS_UNINIT_EXT ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 scalar_t__ EXT4_MB_HINT_DATA ; 
 int /*<<< orphan*/  EXT4_STATE_DIO_UNWRITTEN ; 
 unsigned int EXT_INIT_MAX_LEN ; 
 unsigned int EXT_UNINIT_MAX_LEN ; 
 scalar_t__ FUNC2 (struct ext4_ext_path*) ; 
 int FUNC3 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,unsigned short,struct ext4_ext_path*,unsigned int) ; 
 void* FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned short) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int FUNC12 (struct inode*,struct ext4_extent*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC13 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC14 (struct inode*,unsigned short,int /*<<< orphan*/ *) ; 
 unsigned short FUNC15 (struct inode*,struct ext4_ext_path*,unsigned short) ; 
 void* FUNC16 (struct ext4_extent*) ; 
 int FUNC17 (int /*<<< orphan*/ *,struct inode*,unsigned short,unsigned int,struct ext4_ext_path*,int,unsigned int,struct buffer_head*,unsigned int) ; 
 scalar_t__ FUNC18 (struct inode*,unsigned short,struct ext4_extent*) ; 
 int FUNC19 (int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC21 (struct ext4_extent*) ; 
 unsigned int FUNC22 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,struct ext4_ext_path*,unsigned short) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*,unsigned short,unsigned int,unsigned int) ; 
 int FUNC25 (struct inode*,struct ext4_ext_path*,unsigned short*,int /*<<< orphan*/ *) ; 
 int FUNC26 (struct inode*,struct ext4_ext_path*,unsigned short*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC28 (struct ext4_extent*,unsigned int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,struct inode*,unsigned int,void*,int) ; 
 unsigned int FUNC30 (int /*<<< orphan*/ *,struct ext4_allocation_request*,int*) ; 
 int /*<<< orphan*/  FUNC31 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC33 (char*,unsigned short,unsigned int,unsigned int,...) ; 
 int FUNC34 (struct inode*) ; 
 scalar_t__ FUNC35 (unsigned short,unsigned short,unsigned short) ; 
 int /*<<< orphan*/  FUNC36 (struct ext4_ext_path*) ; 
 unsigned short FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC39 (struct buffer_head*) ; 
 scalar_t__ FUNC40 (int) ; 

int FUNC41(handle_t *handle, struct inode *inode,
			ext4_lblk_t iblock,
			unsigned int max_blocks, struct buffer_head *bh_result,
			int flags)
{
	struct ext4_ext_path *path = NULL;
	struct ext4_extent_header *eh;
	struct ext4_extent newex, *ex;
	ext4_fsblk_t newblock;
	int err = 0, depth, ret;
	unsigned int allocated = 0;
	struct ext4_allocation_request ar;
	ext4_io_end_t *io = FUNC1(inode)->cur_aio_dio;

	FUNC5(BH_New, &bh_result->b_state);
	FUNC33("blocks %u/%u requested for inode %lu\n",
			iblock, max_blocks, inode->i_ino);

	/* check in cache */
	if (FUNC18(inode, iblock, &newex)) {
		if (!newex.ee_start_lo && !newex.ee_start_hi) {
			if ((flags & EXT4_GET_BLOCKS_CREATE) == 0) {
				/*
				 * block isn't allocated yet and
				 * user doesn't want to allocate it
				 */
				goto out2;
			}
			/* we should allocate requested block */
		} else {
			/* block is already allocated */
			newblock = iblock
				   - FUNC37(newex.ee_block)
				   + FUNC22(&newex);
			/* number of remaining blocks in the extent */
			allocated = FUNC16(&newex) -
					(iblock - FUNC37(newex.ee_block));
			goto out;
		}
	}

	/* find extent for this block */
	path = FUNC14(inode, iblock, NULL);
	if (FUNC2(path)) {
		err = FUNC3(path);
		path = NULL;
		goto out2;
	}

	depth = FUNC34(inode);

	/*
	 * consistent leaf must not be empty;
	 * this situation is possible, though, _during_ tree modification;
	 * this is why assert can't be put in ext4_ext_find_extent()
	 */
	if (FUNC40(path[depth].p_ext == NULL && depth != 0)) {
		FUNC0(inode, "bad extent address "
				 "iblock: %d, depth: %d pblock %lld",
				 iblock, depth, path[depth].p_block);
		err = -EIO;
		goto out2;
	}
	eh = path[depth].p_hdr;

	ex = path[depth].p_ext;
	if (ex) {
		ext4_lblk_t ee_block = FUNC37(ex->ee_block);
		ext4_fsblk_t ee_start = FUNC22(ex);
		unsigned short ee_len;

		/*
		 * Uninitialized extents are treated as holes, except that
		 * we split out initialized portions during a write.
		 */
		ee_len = FUNC16(ex);
		/* if found extent covers block, simply return it */
		if (FUNC35(iblock, ee_block, ee_len)) {
			newblock = iblock - ee_block + ee_start;
			/* number of remaining blocks in the extent */
			allocated = ee_len - (iblock - ee_block);
			FUNC33("%u fit into %u:%d -> %llu\n", iblock,
					ee_block, ee_len, newblock);

			/*
			 * Do not put uninitialized extent
			 * in the cache
			 */
			if (!FUNC20(ex)) {
				FUNC24(inode, ee_block,
					ee_len, ee_start);
				goto out;
			}
			ret = FUNC17(
				handle, inode, iblock, max_blocks, path,
				flags, allocated, bh_result, newblock);
			return ret;
		}
	}

	/*
	 * requested block isn't allocated yet;
	 * we couldn't try to create block if create flag is zero
	 */
	if ((flags & EXT4_GET_BLOCKS_CREATE) == 0) {
		/*
		 * put just found gap into cache to speed up
		 * subsequent requests
		 */
		FUNC23(inode, path, iblock);
		goto out2;
	}
	/*
	 * Okay, we need to do block allocation.
	 */

	/* find neighbour allocated blocks */
	ar.lleft = iblock;
	err = FUNC25(inode, path, &ar.lleft, &ar.pleft);
	if (err)
		goto out2;
	ar.lright = iblock;
	err = FUNC26(inode, path, &ar.lright, &ar.pright);
	if (err)
		goto out2;

	/*
	 * See if request is beyond maximum number of blocks we can have in
	 * a single extent. For an initialized extent this limit is
	 * EXT_INIT_MAX_LEN and for an uninitialized extent this limit is
	 * EXT_UNINIT_MAX_LEN.
	 */
	if (max_blocks > EXT_INIT_MAX_LEN &&
	    !(flags & EXT4_GET_BLOCKS_UNINIT_EXT))
		max_blocks = EXT_INIT_MAX_LEN;
	else if (max_blocks > EXT_UNINIT_MAX_LEN &&
		 (flags & EXT4_GET_BLOCKS_UNINIT_EXT))
		max_blocks = EXT_UNINIT_MAX_LEN;

	/* Check if we can really insert (iblock)::(iblock+max_blocks) extent */
	newex.ee_block = FUNC9(iblock);
	newex.ee_len = FUNC8(max_blocks);
	err = FUNC12(inode, &newex, path);
	if (err)
		allocated = FUNC16(&newex);
	else
		allocated = max_blocks;

	/* allocate new block */
	ar.inode = inode;
	ar.goal = FUNC15(inode, path, iblock);
	ar.logical = iblock;
	ar.len = allocated;
	if (FUNC4(inode->i_mode))
		ar.flags = EXT4_MB_HINT_DATA;
	else
		/* disable in-core preallocation for non-regular files */
		ar.flags = 0;
	newblock = FUNC30(handle, &ar, &err);
	if (!newblock)
		goto out2;
	FUNC33("allocate new block: goal %llu, found %llu/%u\n",
		  ar.goal, newblock, allocated);

	/* try to insert new extent into found leaf and return */
	FUNC28(&newex, newblock);
	newex.ee_len = FUNC8(ar.len);
	/* Mark uninitialized */
	if (flags & EXT4_GET_BLOCKS_UNINIT_EXT){
		FUNC21(&newex);
		/*
		 * io_end structure was created for every async
		 * direct IO write to the middle of the file.
		 * To avoid unecessary convertion for every aio dio rewrite
		 * to the mid of file, here we flag the IO that is really
		 * need the convertion.
		 * For non asycn direct IO case, flag the inode state
		 * that we need to perform convertion when IO is done.
		 */
		if ((flags & ~EXT4_GET_BLOCKS_METADATA_NOFAIL) ==
		    EXT4_GET_BLOCKS_DIO_CREATE_EXT) {
			if (io && (io->flag != DIO_AIO_UNWRITTEN)) {
				io->flag = DIO_AIO_UNWRITTEN;
				FUNC6(&FUNC1(inode)->i_aiodio_unwritten);
			} else
				FUNC31(inode,
						     EXT4_STATE_DIO_UNWRITTEN);
		}
	}

	err = FUNC7(handle, inode, iblock, path, ar.len);
	if (err)
		goto out2;

	err = FUNC19(handle, inode, path, &newex, flags);
	if (err) {
		int fb_flags = flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE ?
			EXT4_FREE_BLOCKS_NO_QUOT_UPDATE : 0;
		/* free data blocks we just allocated */
		/* not a good idea to call discard here directly,
		 * but otherwise we'd need to call it every free() */
		FUNC11(inode);
		FUNC29(handle, inode, FUNC22(&newex),
				 FUNC16(&newex), fb_flags);
		goto out2;
	}

	/* previous routine could use block we allocated */
	newblock = FUNC22(&newex);
	allocated = FUNC16(&newex);
	if (allocated > max_blocks)
		allocated = max_blocks;
	FUNC39(bh_result);

	/*
	 * Update reserved blocks/metadata blocks after successful
	 * block allocation which had been deferred till now.
	 */
	if (flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE)
		FUNC10(inode, allocated, 1);

	/*
	 * Cache the extent and update transaction to commit on fdatasync only
	 * when it is _not_ an uninitialized extent.
	 */
	if ((flags & EXT4_GET_BLOCKS_UNINIT_EXT) == 0) {
		FUNC24(inode, iblock, allocated, newblock);
		FUNC32(handle, inode, 1);
	} else
		FUNC32(handle, inode, 0);
out:
	if (allocated > max_blocks)
		allocated = max_blocks;
	FUNC27(inode, path);
	FUNC38(bh_result);
	bh_result->b_bdev = inode->i_sb->s_bdev;
	bh_result->b_blocknr = newblock;
out2:
	if (path) {
		FUNC13(path);
		FUNC36(path);
	}

	return err ? err : allocated;
}