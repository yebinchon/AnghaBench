#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned long u64 ;
typedef  unsigned long u32 ;
typedef  scalar_t__ u16 ;
struct super_block {unsigned long s_blocksize; unsigned char s_blocksize_bits; } ;
struct page {unsigned long index; int /*<<< orphan*/ * b_data; int /*<<< orphan*/  b_end_io; struct address_space* mapping; } ;
struct buffer_head {unsigned long index; int /*<<< orphan*/ * b_data; int /*<<< orphan*/  b_end_io; struct address_space* mapping; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  unsigned long s64 ;
struct TYPE_14__ {unsigned long vcn; scalar_t__ length; } ;
typedef  TYPE_4__ runlist_element ;
struct TYPE_15__ {unsigned long cluster_size_bits; unsigned char cluster_size; struct super_block* sb; } ;
typedef  TYPE_5__ ntfs_volume ;
struct TYPE_13__ {int /*<<< orphan*/  lock; TYPE_4__* rl; } ;
struct TYPE_11__ {unsigned long block_size; unsigned long block_size_bits; unsigned int block_clusters; } ;
struct TYPE_12__ {TYPE_1__ compressed; } ;
struct TYPE_16__ {scalar_t__ type; int name_len; unsigned long initialized_size; TYPE_3__ runlist; int /*<<< orphan*/  mft_no; TYPE_2__ itype; int /*<<< orphan*/  size_lock; TYPE_5__* vol; } ;
typedef  TYPE_6__ ntfs_inode ;
typedef  int loff_t ;
typedef  unsigned long VCN ;
typedef  unsigned char LCN ;

/* Variables and functions */
 scalar_t__ AT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EIO ; 
 int ENOMEM ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 unsigned char LCN_HOLE ; 
 unsigned char LCN_RL_NOT_MAPPED ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ) ; 
 int PAGE_CACHE_MASK ; 
 unsigned long PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 struct page* FUNC16 (struct address_space*,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,int,unsigned long) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct page**) ; 
 struct page** FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 scalar_t__ FUNC23 (unsigned char) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  ntfs_cb_lock ; 
 int /*<<< orphan*/ * ntfs_compression_buffer ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int FUNC27 (struct page**,unsigned int*,unsigned int*,int,unsigned int,unsigned int,unsigned char*,int /*<<< orphan*/ *,unsigned long,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_6__*,unsigned long) ; 
 unsigned char FUNC30 (TYPE_4__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC31 (struct super_block*,char*) ; 
 int /*<<< orphan*/ * FUNC32 (struct page*) ; 
 int /*<<< orphan*/  FUNC33 (struct page*) ; 
 int /*<<< orphan*/  FUNC34 (struct page*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,unsigned long) ; 
 struct page* FUNC37 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC42 (struct page*) ; 
 scalar_t__ FUNC43 (int) ; 
 int /*<<< orphan*/  FUNC44 (struct page*) ; 
 int /*<<< orphan*/  FUNC45 (struct page*) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC47 (struct page*) ; 
 int /*<<< orphan*/  FUNC48 (struct page*,int /*<<< orphan*/ ,int) ; 

int FUNC49(struct page *page)
{
	loff_t i_size;
	s64 initialized_size;
	struct address_space *mapping = page->mapping;
	ntfs_inode *ni = FUNC2(mapping->host);
	ntfs_volume *vol = ni->vol;
	struct super_block *sb = vol->sb;
	runlist_element *rl;
	unsigned long flags, block_size = sb->s_blocksize;
	unsigned char block_size_bits = sb->s_blocksize_bits;
	u8 *cb, *cb_pos, *cb_end;
	struct buffer_head **bhs;
	unsigned long offset, index = page->index;
	u32 cb_size = ni->itype.compressed.block_size;
	u64 cb_size_mask = cb_size - 1UL;
	VCN vcn;
	LCN lcn;
	/* The first wanted vcn (minimum alignment is PAGE_CACHE_SIZE). */
	VCN start_vcn = (((s64)index << PAGE_CACHE_SHIFT) & ~cb_size_mask) >>
			vol->cluster_size_bits;
	/*
	 * The first vcn after the last wanted vcn (minumum alignment is again
	 * PAGE_CACHE_SIZE.
	 */
	VCN end_vcn = ((((s64)(index + 1UL) << PAGE_CACHE_SHIFT) + cb_size - 1)
			& ~cb_size_mask) >> vol->cluster_size_bits;
	/* Number of compression blocks (cbs) in the wanted vcn range. */
	unsigned int nr_cbs = (end_vcn - start_vcn) << vol->cluster_size_bits
			>> ni->itype.compressed.block_size_bits;
	/*
	 * Number of pages required to store the uncompressed data from all
	 * compression blocks (cbs) overlapping @page. Due to alignment
	 * guarantees of start_vcn and end_vcn, no need to round up here.
	 */
	unsigned int nr_pages = (end_vcn - start_vcn) <<
			vol->cluster_size_bits >> PAGE_CACHE_SHIFT;
	unsigned int xpage, max_page, cur_page, cur_ofs, i;
	unsigned int cb_clusters, cb_max_ofs;
	int block, max_block, cb_max_page, bhs_size, nr_bhs, err = 0;
	struct page **pages;
	unsigned char xpage_done = 0;

	FUNC26("Entering, page->index = 0x%lx, cb_size = 0x%x, nr_pages = "
			"%i.", index, cb_size, nr_pages);
	/*
	 * Bad things happen if we get here for anything that is not an
	 * unnamed $DATA attribute.
	 */
	FUNC0(ni->type != AT_DATA);
	FUNC0(ni->name_len);

	pages = FUNC20(nr_pages * sizeof(struct page *), GFP_NOFS);

	/* Allocate memory to store the buffer heads we need. */
	bhs_size = cb_size / block_size * sizeof(struct buffer_head *);
	bhs = FUNC20(bhs_size, GFP_NOFS);

	if (FUNC43(!pages || !bhs)) {
		FUNC19(bhs);
		FUNC19(pages);
		FUNC45(page);
		FUNC28(vol->sb, "Failed to allocate internal buffers.");
		return -ENOMEM;
	}

	/*
	 * We have already been given one page, this is the one we must do.
	 * Once again, the alignment guarantees keep it simple.
	 */
	offset = start_vcn << vol->cluster_size_bits >> PAGE_CACHE_SHIFT;
	xpage = index - offset;
	pages[xpage] = page;
	/*
	 * The remaining pages need to be allocated and inserted into the page
	 * cache, alignment guarantees keep all the below much simpler. (-8
	 */
	FUNC35(&ni->size_lock, flags);
	i_size = FUNC18(FUNC7(ni));
	initialized_size = ni->initialized_size;
	FUNC36(&ni->size_lock, flags);
	max_page = ((i_size + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT) -
			offset;
	/* Is the page fully outside i_size? (truncate in progress) */
	if (xpage >= max_page) {
		FUNC19(bhs);
		FUNC19(pages);
		FUNC48(page, 0, PAGE_CACHE_SIZE);
		FUNC26("Compressed read outside i_size - truncated?");
		FUNC6(page);
		FUNC45(page);
		return 0;
	}
	if (nr_pages < max_page)
		max_page = nr_pages;
	for (i = 0; i < max_page; i++, offset++) {
		if (i != xpage)
			pages[i] = FUNC16(mapping, offset);
		page = pages[i];
		if (page) {
			/*
			 * We only (re)read the page if it isn't already read
			 * in and/or dirty or we would be losing data or at
			 * least wasting our time.
			 */
			if (!FUNC3(page) && (!FUNC5(page) ||
					FUNC4(page))) {
				FUNC1(page);
				FUNC21(page);
				continue;
			}
			FUNC45(page);
			FUNC33(page);
			pages[i] = NULL;
		}
	}

	/*
	 * We have the runlist, and all the destination pages we need to fill.
	 * Now read the first compression block.
	 */
	cur_page = 0;
	cur_ofs = 0;
	cb_clusters = ni->itype.compressed.block_clusters;
do_next_cb:
	nr_cbs--;
	nr_bhs = 0;

	/* Read all cb buffer heads one cluster at a time. */
	rl = NULL;
	for (vcn = start_vcn, start_vcn += cb_clusters; vcn < start_vcn;
			vcn++) {
		bool is_retry = false;

		if (!rl) {
lock_retry_remap:
			FUNC13(&ni->runlist.lock);
			rl = ni->runlist.rl;
		}
		if (FUNC23(rl != NULL)) {
			/* Seek to element containing target vcn. */
			while (rl->length && rl[1].vcn <= vcn)
				rl++;
			lcn = FUNC30(rl, vcn);
		} else
			lcn = LCN_RL_NOT_MAPPED;
		FUNC26("Reading vcn = 0x%llx, lcn = 0x%llx.",
				(unsigned long long)vcn,
				(unsigned long long)lcn);
		if (lcn < 0) {
			/*
			 * When we reach the first sparse cluster we have
			 * finished with the cb.
			 */
			if (lcn == LCN_HOLE)
				break;
			if (is_retry || lcn != LCN_RL_NOT_MAPPED)
				goto rl_err;
			is_retry = true;
			/*
			 * Attempt to map runlist, dropping lock for the
			 * duration.
			 */
			FUNC46(&ni->runlist.lock);
			if (!FUNC29(ni, vcn))
				goto lock_retry_remap;
			goto map_rl_err;
		}
		block = lcn << vol->cluster_size_bits >> block_size_bits;
		/* Read the lcn from device in chunks of block_size bytes. */
		max_block = block + (vol->cluster_size >> block_size_bits);
		do {
			FUNC26("block = 0x%x.", block);
			if (FUNC43(!(bhs[nr_bhs] = FUNC37(sb, block))))
				goto getblk_err;
			nr_bhs++;
		} while (++block < max_block);
	}

	/* Release the lock if we took it. */
	if (rl)
		FUNC46(&ni->runlist.lock);

	/* Setup and initiate io on all buffer heads. */
	for (i = 0; i < nr_bhs; i++) {
		struct buffer_head *tbh = bhs[i];

		if (!FUNC42(tbh))
			continue;
		if (FUNC43(FUNC11(tbh))) {
			FUNC44(tbh);
			continue;
		}
		FUNC15(tbh);
		tbh->b_end_io = end_buffer_read_sync;
		FUNC41(READ, tbh);
	}

	/* Wait for io completion on all buffer heads. */
	for (i = 0; i < nr_bhs; i++) {
		struct buffer_head *tbh = bhs[i];

		if (FUNC11(tbh))
			continue;
		FUNC47(tbh);
		/*
		 * We need an optimization barrier here, otherwise we start
		 * hitting the below fixup code when accessing a loopback
		 * mounted ntfs partition. This indicates either there is a
		 * race condition in the loop driver or, more likely, gcc
		 * overoptimises the code without the barrier and it doesn't
		 * do the Right Thing(TM).
		 */
		FUNC8();
		if (FUNC43(!FUNC11(tbh))) {
			FUNC31(vol->sb, "Buffer is unlocked but not "
					"uptodate! Unplugging the disk queue "
					"and rescheduling.");
			FUNC15(tbh);
			FUNC9(mapping);
			FUNC38();
			FUNC34(tbh);
			if (FUNC43(!FUNC11(tbh)))
				goto read_err;
			FUNC31(vol->sb, "Buffer is now uptodate. Good.");
		}
	}

	/*
	 * Get the compression buffer. We must not sleep any more
	 * until we are finished with it.
	 */
	FUNC39(&ntfs_cb_lock);
	cb = ntfs_compression_buffer;

	FUNC0(!cb);

	cb_pos = cb;
	cb_end = cb + cb_size;

	/* Copy the buffer heads into the contiguous buffer. */
	for (i = 0; i < nr_bhs; i++) {
		FUNC24(cb_pos, bhs[i]->b_data, block_size);
		cb_pos += block_size;
	}

	/* Just a precaution. */
	if (cb_pos + 2 <= cb + cb_size)
		*(u16*)cb_pos = 0;

	/* Reset cb_pos back to the beginning. */
	cb_pos = cb;

	/* We now have both source (if present) and destination. */
	FUNC26("Successfully read the compression block.");

	/* The last page and maximum offset within it for the current cb. */
	cb_max_page = (cur_page << PAGE_CACHE_SHIFT) + cur_ofs + cb_size;
	cb_max_ofs = cb_max_page & ~PAGE_CACHE_MASK;
	cb_max_page >>= PAGE_CACHE_SHIFT;

	/* Catch end of file inside a compression block. */
	if (cb_max_page > max_page)
		cb_max_page = max_page;

	if (vcn == start_vcn - cb_clusters) {
		/* Sparse cb, zero out page range overlapping the cb. */
		FUNC26("Found sparse compression block.");
		/* We can sleep from now on, so we drop lock. */
		FUNC40(&ntfs_cb_lock);
		if (cb_max_ofs)
			cb_max_page--;
		for (; cur_page < cb_max_page; cur_page++) {
			page = pages[cur_page];
			if (page) {
				/*
				 * FIXME: Using clear_page() will become wrong
				 * when we get PAGE_CACHE_SIZE != PAGE_SIZE but
				 * for now there is no problem.
				 */
				if (FUNC23(!cur_ofs))
					FUNC12(FUNC32(page));
				else
					FUNC25(FUNC32(page) + cur_ofs, 0,
							PAGE_CACHE_SIZE -
							cur_ofs);
				FUNC14(page);
				FUNC22(page);
				FUNC6(page);
				FUNC45(page);
				if (cur_page == xpage)
					xpage_done = 1;
				else
					FUNC33(page);
				pages[cur_page] = NULL;
			}
			cb_pos += PAGE_CACHE_SIZE - cur_ofs;
			cur_ofs = 0;
			if (cb_pos >= cb_end)
				break;
		}
		/* If we have a partial final page, deal with it now. */
		if (cb_max_ofs && cb_pos < cb_end) {
			page = pages[cur_page];
			if (page)
				FUNC25(FUNC32(page) + cur_ofs, 0,
						cb_max_ofs - cur_ofs);
			/*
			 * No need to update cb_pos at this stage:
			 *	cb_pos += cb_max_ofs - cur_ofs;
			 */
			cur_ofs = cb_max_ofs;
		}
	} else if (vcn == start_vcn) {
		/* We can't sleep so we need two stages. */
		unsigned int cur2_page = cur_page;
		unsigned int cur_ofs2 = cur_ofs;
		u8 *cb_pos2 = cb_pos;

		FUNC26("Found uncompressed compression block.");
		/* Uncompressed cb, copy it to the destination pages. */
		/*
		 * TODO: As a big optimization, we could detect this case
		 * before we read all the pages and use block_read_full_page()
		 * on all full pages instead (we still have to treat partial
		 * pages especially but at least we are getting rid of the
		 * synchronous io for the majority of pages.
		 * Or if we choose not to do the read-ahead/-behind stuff, we
		 * could just return block_read_full_page(pages[xpage]) as long
		 * as PAGE_CACHE_SIZE <= cb_size.
		 */
		if (cb_max_ofs)
			cb_max_page--;
		/* First stage: copy data into destination pages. */
		for (; cur_page < cb_max_page; cur_page++) {
			page = pages[cur_page];
			if (page)
				FUNC24(FUNC32(page) + cur_ofs, cb_pos,
						PAGE_CACHE_SIZE - cur_ofs);
			cb_pos += PAGE_CACHE_SIZE - cur_ofs;
			cur_ofs = 0;
			if (cb_pos >= cb_end)
				break;
		}
		/* If we have a partial final page, deal with it now. */
		if (cb_max_ofs && cb_pos < cb_end) {
			page = pages[cur_page];
			if (page)
				FUNC24(FUNC32(page) + cur_ofs, cb_pos,
						cb_max_ofs - cur_ofs);
			cb_pos += cb_max_ofs - cur_ofs;
			cur_ofs = cb_max_ofs;
		}
		/* We can sleep from now on, so drop lock. */
		FUNC40(&ntfs_cb_lock);
		/* Second stage: finalize pages. */
		for (; cur2_page < cb_max_page; cur2_page++) {
			page = pages[cur2_page];
			if (page) {
				/*
				 * If we are outside the initialized size, zero
				 * the out of bounds page range.
				 */
				FUNC17(page, i_size,
						initialized_size);
				FUNC14(page);
				FUNC22(page);
				FUNC6(page);
				FUNC45(page);
				if (cur2_page == xpage)
					xpage_done = 1;
				else
					FUNC33(page);
				pages[cur2_page] = NULL;
			}
			cb_pos2 += PAGE_CACHE_SIZE - cur_ofs2;
			cur_ofs2 = 0;
			if (cb_pos2 >= cb_end)
				break;
		}
	} else {
		/* Compressed cb, decompress it into the destination page(s). */
		unsigned int prev_cur_page = cur_page;

		FUNC26("Found compressed compression block.");
		err = FUNC27(pages, &cur_page, &cur_ofs,
				cb_max_page, cb_max_ofs, xpage, &xpage_done,
				cb_pos,	cb_size - (cb_pos - cb), i_size,
				initialized_size);
		/*
		 * We can sleep from now on, lock already dropped by
		 * ntfs_decompress().
		 */
		if (err) {
			FUNC28(vol->sb, "ntfs_decompress() failed in inode "
					"0x%lx with error code %i. Skipping "
					"this compression block.",
					ni->mft_no, -err);
			/* Release the unfinished pages. */
			for (; prev_cur_page < cur_page; prev_cur_page++) {
				page = pages[prev_cur_page];
				if (page) {
					FUNC14(page);
					FUNC22(page);
					FUNC45(page);
					if (prev_cur_page != xpage)
						FUNC33(page);
					pages[prev_cur_page] = NULL;
				}
			}
		}
	}

	/* Release the buffer heads. */
	for (i = 0; i < nr_bhs; i++)
		FUNC10(bhs[i]);

	/* Do we have more work to do? */
	if (nr_cbs)
		goto do_next_cb;

	/* We no longer need the list of buffer heads. */
	FUNC19(bhs);

	/* Clean up if we have any pages left. Should never happen. */
	for (cur_page = 0; cur_page < max_page; cur_page++) {
		page = pages[cur_page];
		if (page) {
			FUNC28(vol->sb, "Still have pages left! "
					"Terminating them with extreme "
					"prejudice.  Inode 0x%lx, page index "
					"0x%lx.", ni->mft_no, page->index);
			FUNC14(page);
			FUNC22(page);
			FUNC45(page);
			if (cur_page != xpage)
				FUNC33(page);
			pages[cur_page] = NULL;
		}
	}

	/* We no longer need the list of pages. */
	FUNC19(pages);

	/* If we have completed the requested page, we return success. */
	if (FUNC23(xpage_done))
		return 0;

	FUNC26("Failed. Returning error code %s.", err == -EOVERFLOW ?
			"EOVERFLOW" : (!err ? "EIO" : "unkown error"));
	return err < 0 ? err : -EIO;

read_err:
	FUNC28(vol->sb, "IO error while reading compressed data.");
	/* Release the buffer heads. */
	for (i = 0; i < nr_bhs; i++)
		FUNC10(bhs[i]);
	goto err_out;

map_rl_err:
	FUNC28(vol->sb, "ntfs_map_runlist() failed. Cannot read "
			"compression block.");
	goto err_out;

rl_err:
	FUNC46(&ni->runlist.lock);
	FUNC28(vol->sb, "ntfs_rl_vcn_to_lcn() failed. Cannot read "
			"compression block.");
	goto err_out;

getblk_err:
	FUNC46(&ni->runlist.lock);
	FUNC28(vol->sb, "getblk() failed. Cannot read compression block.");

err_out:
	FUNC19(bhs);
	for (i = cur_page; i < max_page; i++) {
		page = pages[i];
		if (page) {
			FUNC14(page);
			FUNC22(page);
			FUNC45(page);
			if (i != xpage)
				FUNC33(page);
		}
	}
	FUNC19(pages);
	return -EIO;
}