#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {unsigned long i_size; TYPE_1__* i_sb; int /*<<< orphan*/  i_mutex; struct address_space* i_mapping; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_5__ {int i_flags; } ;
struct TYPE_4__ {unsigned long s_blocksize; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_CACHE_SHIFT ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct address_space*,int) ; 
 int i_nopack_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct page*,unsigned long,unsigned long) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct page*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

int FUNC11(struct inode *inode, struct file *filp)
{
	int retval = 0;
	int index;
	struct page *page;
	struct address_space *mapping;
	unsigned long write_from;
	unsigned long blocksize = inode->i_sb->s_blocksize;

	if (inode->i_size == 0) {
		FUNC0(inode)->i_flags |= i_nopack_mask;
		return 0;
	}
	/* ioctl already done */
	if (FUNC0(inode)->i_flags & i_nopack_mask) {
		return 0;
	}

	/* we need to make sure nobody is changing the file size beneath
	 ** us
	 */
	FUNC3(&inode->i_mutex);
	FUNC8(inode->i_sb);

	write_from = inode->i_size & (blocksize - 1);
	/* if we are on a block boundary, we are already unpacked.  */
	if (write_from == 0) {
		FUNC0(inode)->i_flags |= i_nopack_mask;
		goto out;
	}

	/* we unpack by finding the page with the tail, and calling
	 ** reiserfs_prepare_write on that page.  This will force a
	 ** reiserfs_get_block to unpack the tail for us.
	 */
	index = inode->i_size >> PAGE_CACHE_SHIFT;
	mapping = inode->i_mapping;
	page = FUNC2(mapping, index);
	retval = -ENOMEM;
	if (!page) {
		goto out;
	}
	retval = FUNC7(NULL, page, write_from, write_from);
	if (retval)
		goto out_unlock;

	/* conversion can change page contents, must flush */
	FUNC1(page);
	retval = FUNC6(NULL, page, write_from, write_from);
	FUNC0(inode)->i_flags |= i_nopack_mask;

      out_unlock:
	FUNC10(page);
	FUNC5(page);

      out:
	FUNC4(&inode->i_mutex);
	FUNC9(inode->i_sb);
	return retval;
}