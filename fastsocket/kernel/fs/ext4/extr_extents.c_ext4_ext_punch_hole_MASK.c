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
struct super_block {int s_blocksize; } ;
struct inode {int i_size; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; struct address_space* i_mapping; struct super_block* i_sb; } ;
struct address_space {scalar_t__ nrpages; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int EPERM ; 
 int ETXTBSY ; 
 int FUNC0 (struct super_block*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct address_space*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC20 (struct inode*) ; 
 int FUNC21 (struct address_space*,int,int) ; 
 int FUNC22 (struct inode*) ; 
 scalar_t__ FUNC23 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

int FUNC28(struct inode *inode, loff_t offset, loff_t length)
{
	struct super_block *sb = inode->i_sb;
	ext4_lblk_t first_block, stop_block;
	struct address_space *mapping = inode->i_mapping;
	handle_t *handle;
	loff_t first_page, last_page, page_len;
	loff_t first_page_offset, last_page_offset;
	int credits, err = 0;

	/*
	 * Write out all dirty pages to avoid race conditions
	 * Then release them.
	 */
	if (mapping->nrpages && FUNC23(mapping, PAGECACHE_TAG_DIRTY)) {
		err = FUNC21(mapping,
			offset, offset + length - 1);

		if (err)
			return err;
	}

	FUNC24(&inode->i_mutex);
	/* It's not possible punch hole on append only file */
	if (FUNC2(inode) || FUNC4(inode)) {
		err = -EPERM;
		goto out_mutex;
	}
	if (FUNC5(inode)) {
		err = -ETXTBSY;
		goto out_mutex;
	}

	/* No need to punch hole beyond i_size */
	if (offset >= inode->i_size)
		goto out_mutex;

	/*
	 * If the hole extends beyond i_size, set the hole
	 * to end after the page that contains i_size
	 */
	if (offset + length > inode->i_size) {
		length = inode->i_size +
		   PAGE_CACHE_SIZE - (inode->i_size & (PAGE_CACHE_SIZE - 1)) -
		   offset;
	}

	first_page = (offset + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
	last_page = (offset + length) >> PAGE_CACHE_SHIFT;

	first_page_offset = first_page << PAGE_CACHE_SHIFT;
	last_page_offset = last_page << PAGE_CACHE_SHIFT;

	/* Now release the pages */
	if (last_page_offset > first_page_offset) {
		FUNC26(inode, first_page_offset,
					 last_page_offset - 1);
	}

	/* finish any pending end_io work */
	err = FUNC22(inode);
	if (err)
		goto out_mutex;

	credits = FUNC20(inode);
	handle = FUNC15(inode, credits);
	if (FUNC3(handle)) {
		err = FUNC7(handle);
		goto out_mutex;
	}

	err = FUNC18(handle, inode);
	if (err)
		goto out;

	/*
	 * Now we need to zero out the non-page-aligned data in the
	 * pages at the start and tail of the hole, and unmap the buffer
	 * heads for the block aligned regions of the page that were
	 * completely zeroed.
	 */
	if (first_page > last_page) {
		/*
		 * If the file space being truncated is contained within a page
		 * just zero out and unmap the middle of that page
		 */
		err = FUNC10(handle,
			mapping, offset, length, 0);

		if (err)
			goto out;
	} else {
		/*
		 * zero out and unmap the partial page that contains
		 * the start of the hole
		 */
		page_len  = first_page_offset - offset;
		if (page_len > 0) {
			err = FUNC10(handle, mapping,
						   offset, page_len, 0);
			if (err)
				goto out;
		}

		/*
		 * zero out and unmap the partial page that contains
		 * the end of the hole
		 */
		page_len = offset + length - last_page_offset;
		if (page_len > 0) {
			err = FUNC10(handle, mapping,
					last_page_offset, page_len, 0);
			if (err)
				goto out;
		}
	}

	/*
	 * If i_size is contained in the last page, we need to
	 * unmap and zero the partial page after i_size
	 */
	if (inode->i_size >> PAGE_CACHE_SHIFT == last_page &&
	   inode->i_size % PAGE_CACHE_SIZE != 0) {

		page_len = PAGE_CACHE_SIZE -
			(inode->i_size & (PAGE_CACHE_SIZE - 1));

		if (page_len > 0) {
			err = FUNC10(handle,
			  mapping, inode->i_size, page_len, 0);

			if (err)
				goto out;
		}
	}

	first_block = (offset + sb->s_blocksize - 1) >>
		FUNC0(sb);
	stop_block = (offset + length) >> FUNC0(sb);

	/* If there are no blocks to remove, return now */
	if (first_block >= stop_block)
		goto out;

	FUNC8(&FUNC1(inode)->i_data_sem);
	FUNC12(inode);
	FUNC11(inode);

	err = FUNC13(inode, first_block, stop_block - 1);

	FUNC12(inode);
	FUNC11(inode);

	if (FUNC6(inode))
		FUNC14(handle);

	FUNC27(&FUNC1(inode)->i_data_sem);

out:
	FUNC19(handle, inode);
	inode->i_mtime = inode->i_ctime = FUNC9(inode);
	FUNC17(handle, inode);
	FUNC16(handle);
out_mutex:
	FUNC25(&inode->i_mutex);
	return err;
}