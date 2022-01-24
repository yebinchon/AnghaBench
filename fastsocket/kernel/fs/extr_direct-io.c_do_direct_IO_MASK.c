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
struct page {int dummy; } ;
struct dio_submit {unsigned int blkbits; unsigned int first_block_in_page; unsigned long block_in_file; unsigned long final_block_in_request; int blocks_available; int next_block_for_io; int blkfactor; int /*<<< orphan*/  boundary; int /*<<< orphan*/  start_zero_done; } ;
struct dio {int rw; int /*<<< orphan*/  inode; } ;
struct buffer_head {int b_size; int b_blocknr; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOTBLK ; 
 scalar_t__ FUNC2 (struct page*) ; 
 unsigned int const PAGE_SIZE ; 
 int FUNC3 (struct page*) ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct dio*,struct buffer_head*) ; 
 struct page* FUNC8 (struct dio*,struct dio_submit*) ; 
 int /*<<< orphan*/  FUNC9 (struct dio*,struct dio_submit*,int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC10 (struct dio*,struct dio_submit*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int FUNC13 (struct dio*,struct dio_submit*,struct page*,unsigned int,unsigned int,unsigned long,struct buffer_head*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,unsigned int,int) ; 

__attribute__((used)) static int FUNC16(struct dio *dio, struct dio_submit *sdio,
			struct buffer_head *map_bh)
{
	const unsigned blkbits = sdio->blkbits;
	const unsigned blocks_per_page = PAGE_SIZE >> blkbits;
	struct page *page;
	unsigned block_in_page;
	int ret = 0;

	/* The I/O can start at any block offset within the first page */
	block_in_page = sdio->first_block_in_page;

	while (sdio->block_in_file < sdio->final_block_in_request) {
		page = FUNC8(dio, sdio);
		if (FUNC2(page)) {
			ret = FUNC3(page);
			goto out;
		}

		while (block_in_page < blocks_per_page) {
			unsigned offset_in_page = block_in_page << blkbits;
			unsigned this_chunk_bytes;	/* # of bytes mapped */
			unsigned this_chunk_blocks;	/* # of blocks */
			unsigned u;

			if (sdio->blocks_available == 0) {
				/*
				 * Need to go and map some more disk
				 */
				unsigned long blkmask;
				unsigned long dio_remainder;

				ret = FUNC10(dio, sdio, map_bh);
				if (ret) {
					FUNC12(page);
					goto out;
				}
				if (!FUNC5(map_bh))
					goto do_holes;

				sdio->blocks_available =
						map_bh->b_size >> sdio->blkbits;
				sdio->next_block_for_io =
					map_bh->b_blocknr << sdio->blkfactor;
				if (FUNC6(map_bh))
					FUNC7(dio, map_bh);

				if (!sdio->blkfactor)
					goto do_holes;

				blkmask = (1 << sdio->blkfactor) - 1;
				dio_remainder = (sdio->block_in_file & blkmask);

				/*
				 * If we are at the start of IO and that IO
				 * starts partway into a fs-block,
				 * dio_remainder will be non-zero.  If the IO
				 * is a read then we can simply advance the IO
				 * cursor to the first block which is to be
				 * read.  But if the IO is a write and the
				 * block was newly allocated we cannot do that;
				 * the start of the fs block must be zeroed out
				 * on-disk
				 */
				if (!FUNC6(map_bh))
					sdio->next_block_for_io += dio_remainder;
				sdio->blocks_available -= dio_remainder;
			}
do_holes:
			/* Handle holes */
			if (!FUNC5(map_bh)) {
				loff_t i_size_aligned;

				/* AKPM: eargh, -ENOTBLK is a hack */
				if (dio->rw & WRITE) {
					FUNC12(page);
					return -ENOTBLK;
				}

				/*
				 * Be sure to account for a partial block as the
				 * last block in the file
				 */
				i_size_aligned = FUNC0(FUNC11(dio->inode),
							1 << blkbits);
				if (sdio->block_in_file >=
						i_size_aligned >> blkbits) {
					/* We hit eof */
					FUNC12(page);
					goto out;
				}
				FUNC15(page, block_in_page << blkbits,
						1 << blkbits);
				sdio->block_in_file++;
				block_in_page++;
				goto next_block;
			}

			/*
			 * If we're performing IO which has an alignment which
			 * is finer than the underlying fs, go check to see if
			 * we must zero out the start of this block.
			 */
			if (FUNC14(sdio->blkfactor && !sdio->start_zero_done))
				FUNC9(dio, sdio, 0, map_bh);

			/*
			 * Work out, in this_chunk_blocks, how much disk we
			 * can add to this page
			 */
			this_chunk_blocks = sdio->blocks_available;
			u = (PAGE_SIZE - offset_in_page) >> blkbits;
			if (this_chunk_blocks > u)
				this_chunk_blocks = u;
			u = sdio->final_block_in_request - sdio->block_in_file;
			if (this_chunk_blocks > u)
				this_chunk_blocks = u;
			this_chunk_bytes = this_chunk_blocks << blkbits;
			FUNC1(this_chunk_bytes == 0);

			sdio->boundary = FUNC4(map_bh);
			ret = FUNC13(dio, sdio, page,
						  offset_in_page,
						  this_chunk_bytes,
						  sdio->next_block_for_io,
						  map_bh);
			if (ret) {
				FUNC12(page);
				goto out;
			}
			sdio->next_block_for_io += this_chunk_blocks;

			sdio->block_in_file += this_chunk_blocks;
			block_in_page += this_chunk_blocks;
			sdio->blocks_available -= this_chunk_blocks;
next_block:
			FUNC1(sdio->block_in_file > sdio->final_block_in_request);
			if (sdio->block_in_file == sdio->final_block_in_request)
				break;
		}

		/* Drop the ref which was taken in get_user_pages() */
		FUNC12(page);
		block_in_page = 0;
	}
out:
	return ret;
}