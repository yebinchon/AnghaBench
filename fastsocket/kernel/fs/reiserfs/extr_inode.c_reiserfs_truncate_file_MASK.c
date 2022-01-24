#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_size; TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
struct TYPE_6__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 int ENOENT ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct reiserfs_transaction_handle*,struct inode*,int) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct inode*,struct page**,struct buffer_head**) ; 
 int FUNC3 (struct reiserfs_transaction_handle*,TYPE_1__*,int) ; 
 int FUNC4 (struct reiserfs_transaction_handle*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (struct reiserfs_transaction_handle*,struct inode*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*,unsigned long,unsigned int) ; 

int FUNC15(struct inode *inode, int update_timestamps)
{
	struct reiserfs_transaction_handle th;
	/* we want the offset for the first byte after the end of the file */
	unsigned long offset = inode->i_size & (PAGE_CACHE_SIZE - 1);
	unsigned blocksize = inode->i_sb->s_blocksize;
	unsigned length;
	struct page *page = NULL;
	int error;
	struct buffer_head *bh = NULL;
	int err2;

	FUNC10(inode->i_sb);

	if (inode->i_size > 0) {
		error = FUNC2(inode, &page, &bh);
		if (error) {
			// -ENOENT means we truncated past the end of the file,
			// and get_block_create_0 could not find a block to read in,
			// which is ok.
			if (error != -ENOENT)
				FUNC8(inode->i_sb, "clm-6001",
					       "grab_tail_page failed %d",
					       error);
			page = NULL;
			bh = NULL;
		}
	}

	/* so, if page != NULL, we have a buffer head for the offset at
	 ** the end of the file. if the bh is mapped, and bh->b_blocknr != 0,
	 ** then we have an unformatted node.  Otherwise, we have a direct item,
	 ** and no zeroing is required on disk.  We zero after the truncate,
	 ** because the truncate might pack the item anyway
	 ** (it will unmap bh if it packs).
	 */
	/* it is enough to reserve space in transaction for 2 balancings:
	   one for "save" link adding and another for the first
	   cut_from_item. 1 is for update_sd */
	error = FUNC3(&th, inode->i_sb,
			      JOURNAL_PER_BALANCE_CNT * 2 + 1);
	if (error)
		goto out;
	FUNC9(inode);
	if (update_timestamps)
		/* we are doing real truncate: if the system crashes before the last
		   transaction of truncating gets committed - on reboot the file
		   either appears truncated properly or not truncated at all */
		FUNC0(&th, inode, 1);
	err2 = FUNC7(&th, inode, page, update_timestamps);
	error =
	    FUNC4(&th, inode->i_sb, JOURNAL_PER_BALANCE_CNT * 2 + 1);
	if (error)
		goto out;

	/* check reiserfs_do_truncate after ending the transaction */
	if (err2) {
		error = err2;
  		goto out;
	}
	
	if (update_timestamps) {
		error = FUNC12(inode, 1 /* truncate */);
		if (error)
			goto out;
	}

	if (page) {
		length = offset & (blocksize - 1);
		/* if we are not on a block boundary */
		if (length) {
			length = blocksize - length;
			FUNC14(page, offset, length);
			if (FUNC1(bh) && bh->b_blocknr != 0) {
				FUNC5(bh);
			}
		}
		FUNC13(page);
		FUNC6(page);
	}

	FUNC11(inode->i_sb);
	return 0;
      out:
	if (page) {
		FUNC13(page);
		FUNC6(page);
	}
	FUNC11(inode->i_sb);
	return error;
}