#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {int i_blkbits; int i_size; TYPE_2__* i_sb; struct address_space* i_mapping; } ;
struct file {TYPE_1__* f_dentry; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;
struct address_space_operations {int (* write_begin ) (struct file*,struct address_space*,long long,unsigned int,unsigned int,struct page**,void**) ;int (* write_end ) (struct file*,struct address_space*,long long,unsigned int,unsigned int,struct page*,void*) ;int /*<<< orphan*/  (* readpage ) (struct file*,struct page*) ;} ;
struct address_space {struct address_space_operations* a_ops; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int pgoff_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_4__ {unsigned long s_blocksize; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 unsigned int AOP_FLAG_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERNEL_DS ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct inode*,int,int,int*) ; 
 struct buffer_head* FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct file*,struct address_space*,long long,unsigned int,unsigned int,struct page**,void**) ; 
 int /*<<< orphan*/  FUNC17 (struct file*,struct page*) ; 
 int FUNC18 (struct file*,struct address_space*,long long,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 

__attribute__((used)) static int
FUNC23(struct file *o_filp, struct inode *donor_inode,
		  pgoff_t orig_page_offset, int data_offset_in_page,
		  int block_len_in_page, int uninit, int *err)
{
	struct inode *orig_inode = o_filp->f_dentry->d_inode;
	struct address_space *mapping = orig_inode->i_mapping;
	struct buffer_head *bh;
	struct page *page = NULL;
	const struct address_space_operations *a_ops = mapping->a_ops;
	handle_t *handle;
	ext4_lblk_t orig_blk_offset;
	long long offs = orig_page_offset << PAGE_CACHE_SHIFT;
	unsigned long blocksize = orig_inode->i_sb->s_blocksize;
	unsigned int w_flags = 0;
	unsigned int tmp_data_size, data_size, replaced_size;
	void *fsdata;
	int i, jblocks;
	int err2 = 0;
	int replaced_count = 0;
	int blocks_per_page = PAGE_CACHE_SIZE >> orig_inode->i_blkbits;

	/*
	 * It needs twice the amount of ordinary journal buffers because
	 * inode and donor_inode may change each different metadata blocks.
	 */
	jblocks = FUNC8(orig_inode) * 2;
	handle = FUNC6(orig_inode, jblocks);
	if (FUNC0(handle)) {
		*err = FUNC1(handle);
		return 0;
	}

	if (FUNC15(FUNC9(), KERNEL_DS))
		w_flags |= AOP_FLAG_UNINTERRUPTIBLE;

	orig_blk_offset = orig_page_offset * blocks_per_page +
		data_offset_in_page;

	/*
	 * If orig extent is uninitialized one,
	 * it's not necessary force the page into memory
	 * and then force it to be written out again.
	 * Just swap data blocks between orig and donor.
	 */
	if (uninit) {
		replaced_count = FUNC11(handle, orig_inode,
						donor_inode, orig_blk_offset,
						block_len_in_page, err);
		goto out2;
	}

	offs = (long long)orig_blk_offset << orig_inode->i_blkbits;

	/* Calculate data_size */
	if ((orig_blk_offset + block_len_in_page - 1) ==
	    ((orig_inode->i_size - 1) >> orig_inode->i_blkbits)) {
		/* Replace the last block */
		tmp_data_size = orig_inode->i_size & (blocksize - 1);
		/*
		 * If data_size equal zero, it shows data_size is multiples of
		 * blocksize. So we set appropriate value.
		 */
		if (tmp_data_size == 0)
			tmp_data_size = blocksize;

		data_size = tmp_data_size +
			((block_len_in_page - 1) << orig_inode->i_blkbits);
	} else
		data_size = block_len_in_page << orig_inode->i_blkbits;

	replaced_size = data_size;

	*err = a_ops->write_begin(o_filp, mapping, offs, data_size, w_flags,
				 &page, &fsdata);
	if (FUNC20(*err < 0))
		goto out;

	if (!FUNC3(page)) {
		mapping->a_ops->readpage(o_filp, page);
		FUNC10(page);
	}

	/*
	 * try_to_release_page() doesn't call releasepage in writeback mode.
	 * We should care about the order of writing to the same file
	 * by multiple move extent processes.
	 * It needs to call wait_on_page_writeback() to wait for the
	 * writeback of the page.
	 */
	FUNC22(page);

	/* Release old bh and drop refs */
	FUNC19(page, 0);

	replaced_count = FUNC11(handle, orig_inode, donor_inode,
					orig_blk_offset, block_len_in_page,
					&err2);
	if (err2) {
		if (replaced_count) {
			block_len_in_page = replaced_count;
			replaced_size =
				block_len_in_page << orig_inode->i_blkbits;
		} else
			goto out;
	}

	if (!FUNC14(page))
		FUNC4(page, 1 << orig_inode->i_blkbits, 0);

	bh = FUNC12(page);
	for (i = 0; i < data_offset_in_page; i++)
		bh = bh->b_this_page;

	for (i = 0; i < block_len_in_page; i++) {
		*err = FUNC5(orig_inode,
				(sector_t)(orig_blk_offset + i), bh, 0);
		if (*err < 0)
			goto out;

		if (bh->b_this_page != NULL)
			bh = bh->b_this_page;
	}

	*err = a_ops->write_end(o_filp, mapping, offs, data_size, replaced_size,
			       page, fsdata);
	page = NULL;

out:
	if (FUNC20(page)) {
		if (FUNC2(page))
			FUNC21(page);
		FUNC13(page);
		FUNC7(handle);
	}
out2:
	FUNC7(handle);

	if (err2)
		*err = err2;

	return replaced_count;
}