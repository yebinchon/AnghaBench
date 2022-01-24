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
struct reiserfs_transaction_handle {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_size; int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_flags; } ;
struct TYPE_5__ {struct reiserfs_transaction_handle* journal_info; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 unsigned long AOP_FLAG_CONT_EXPAND ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  i_pack_on_close_mask ; 
 int FUNC6 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct page*,unsigned int,unsigned int) ; 
 int FUNC12 (struct reiserfs_transaction_handle*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 

__attribute__((used)) static int FUNC21(struct file *file, struct address_space *mapping,
			      loff_t pos, unsigned len, unsigned copied,
			      struct page *page, void *fsdata)
{
	struct inode *inode = page->mapping->host;
	int ret = 0;
	int update_sd = 0;
	struct reiserfs_transaction_handle *th;
	unsigned start;

	if ((unsigned long)fsdata & AOP_FLAG_CONT_EXPAND)
		pos ++;

	FUNC16(inode->i_sb);
	if (FUNC13(inode->i_sb))
		th = current->journal_info;
	else
		th = NULL;

	start = pos & (PAGE_CACHE_SIZE - 1);
	if (FUNC19(copied < len)) {
		if (!FUNC0(page))
			copied = 0;

		FUNC10(page, start + copied, start + len);
	}
	FUNC2(page);

	FUNC11(inode, page, start, start + copied);

	/* generic_commit_write does this for us, but does not update the
	 ** transaction tracking stuff when the size changes.  So, we have
	 ** to do the i_size updates here.
	 */
	pos += copied;
	if (pos > inode->i_size) {
		struct reiserfs_transaction_handle myth;
		FUNC17(inode->i_sb);
		/* If the file have grown beyond the border where it
		   can have a tail, unmark it as needing a tail
		   packing */
		if ((FUNC3(inode->i_sb)
		     && inode->i_size > FUNC5(inode) * 4)
		    || (FUNC4(inode->i_sb)
			&& inode->i_size > FUNC5(inode)))
			FUNC1(inode)->i_flags &= ~i_pack_on_close_mask;

		ret = FUNC6(&myth, inode->i_sb, 1);
		if (ret) {
			FUNC18(inode->i_sb);
			goto journal_error;
		}
		FUNC14(inode);
		inode->i_size = pos;
		/*
		 * this will just nest into our transaction.  It's important
		 * to use mark_inode_dirty so the inode gets pushed around on the
		 * dirty lists, and so that O_SYNC works as expected
		 */
		FUNC8(inode);
		FUNC15(&myth, inode);
		update_sd = 1;
		ret = FUNC7(&myth, inode->i_sb, 1);
		FUNC18(inode->i_sb);
		if (ret)
			goto journal_error;
	}
	if (th) {
		FUNC17(inode->i_sb);
		if (!update_sd)
			FUNC8(inode);
		ret = FUNC12(th);
		FUNC18(inode->i_sb);
		if (ret)
			goto out;
	}

      out:
	FUNC20(page);
	FUNC9(page);
	return ret == 0 ? copied : ret;

      journal_error:
	if (th) {
		FUNC17(inode->i_sb);
		if (!update_sd)
			FUNC15(th, inode);
		ret = FUNC12(th);
		FUNC18(inode->i_sb);
	}

	goto out;
}