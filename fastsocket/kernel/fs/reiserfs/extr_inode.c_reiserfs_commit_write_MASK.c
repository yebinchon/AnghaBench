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
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  i_flags; } ;
struct TYPE_5__ {struct reiserfs_transaction_handle* journal_info; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ PAGE_CACHE_SHIFT ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  i_pack_on_close_mask ; 
 int FUNC4 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct page*,unsigned int,unsigned int) ; 
 int FUNC8 (struct reiserfs_transaction_handle*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct file *f, struct page *page,
			  unsigned from, unsigned to)
{
	struct inode *inode = page->mapping->host;
	loff_t pos = ((loff_t) page->index << PAGE_CACHE_SHIFT) + to;
	int ret = 0;
	int update_sd = 0;
	struct reiserfs_transaction_handle *th = NULL;

	FUNC12(inode->i_sb);
	if (FUNC9(inode->i_sb)) {
		th = current->journal_info;
	}
	FUNC7(inode, page, from, to);

	/* generic_commit_write does this for us, but does not update the
	 ** transaction tracking stuff when the size changes.  So, we have
	 ** to do the i_size updates here.
	 */
	if (pos > inode->i_size) {
		struct reiserfs_transaction_handle myth;
		FUNC13(inode->i_sb);
		/* If the file have grown beyond the border where it
		   can have a tail, unmark it as needing a tail
		   packing */
		if ((FUNC1(inode->i_sb)
		     && inode->i_size > FUNC3(inode) * 4)
		    || (FUNC2(inode->i_sb)
			&& inode->i_size > FUNC3(inode)))
			FUNC0(inode)->i_flags &= ~i_pack_on_close_mask;

		ret = FUNC4(&myth, inode->i_sb, 1);
		if (ret) {
			FUNC14(inode->i_sb);
			goto journal_error;
		}
		FUNC10(inode);
		inode->i_size = pos;
		/*
		 * this will just nest into our transaction.  It's important
		 * to use mark_inode_dirty so the inode gets pushed around on the
		 * dirty lists, and so that O_SYNC works as expected
		 */
		FUNC6(inode);
		FUNC11(&myth, inode);
		update_sd = 1;
		ret = FUNC5(&myth, inode->i_sb, 1);
		FUNC14(inode->i_sb);
		if (ret)
			goto journal_error;
	}
	if (th) {
		FUNC13(inode->i_sb);
		if (!update_sd)
			FUNC6(inode);
		ret = FUNC8(th);
		FUNC14(inode->i_sb);
		if (ret)
			goto out;
	}

      out:
	return ret;

      journal_error:
	if (th) {
		FUNC13(inode->i_sb);
		if (!update_sd)
			FUNC11(th, inode);
		ret = FUNC8(th);
		FUNC14(inode->i_sb);
	}

	return ret;
}