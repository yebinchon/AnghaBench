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
struct super_block {int s_blocksize; } ;
struct reiserfs_transaction_handle {scalar_t__ t_trans_id; } ;
struct page {unsigned long index; } ;
struct inode {unsigned long i_size; int i_blkbits; struct super_block* i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; } ;

/* Variables and functions */
 unsigned long PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int FUNC5 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int FUNC6 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct reiserfs_transaction_handle*,struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 struct buffer_head* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC11 (struct super_block*) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 

int FUNC18(struct inode *inode, struct page *page,
			 unsigned from, unsigned to)
{
	unsigned block_start, block_end;
	int partial = 0;
	unsigned blocksize;
	struct buffer_head *bh, *head;
	unsigned long i_size_index = inode->i_size >> PAGE_CACHE_SHIFT;
	int new;
	int logit = FUNC12(inode);
	struct super_block *s = inode->i_sb;
	int bh_per_page = PAGE_CACHE_SIZE / s->s_blocksize;
	struct reiserfs_transaction_handle th;
	int ret = 0;

	th.t_trans_id = 0;
	blocksize = 1 << inode->i_blkbits;

	if (logit) {
		FUNC15(s);
		ret = FUNC5(&th, s, bh_per_page + 1);
		if (ret)
			goto drop_write_lock;
		FUNC14(inode);
	}
	for (bh = head = FUNC9(page), block_start = 0;
	     bh != head || !block_start;
	     block_start = block_end, bh = bh->b_this_page) {

		new = FUNC2(bh);
		FUNC4(bh);
		block_end = block_start + blocksize;
		if (block_end <= from || block_start >= to) {
			if (!FUNC3(bh))
				partial = 1;
		} else {
			FUNC17(bh);
			if (logit) {
				FUNC13(s, bh, 1);
				FUNC7(&th, s, bh);
			} else if (!FUNC1(bh)) {
				FUNC8(bh);
				/* do data=ordered on any page past the end
				 * of file and any buffer marked BH_New.
				 */
				if (FUNC11(inode->i_sb) &&
				    (new || page->index >= i_size_index)) {
					FUNC10(inode, bh);
				}
			}
		}
	}
	if (logit) {
		ret = FUNC6(&th, s, bh_per_page + 1);
	      drop_write_lock:
		FUNC16(s);
	}
	/*
	 * If this is a partial write which happened to make all buffers
	 * uptodate then we can optimize away a bogus readpage() for
	 * the next read(). Here we 'discover' whether the page went
	 * uptodate as a result of this (potentially partial) write.
	 */
	if (!partial)
		FUNC0(page);
	return ret;
}