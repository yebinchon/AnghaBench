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
struct inode {int i_size; int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page**,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_journal_get_write_access ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  ext3_get_block ; 
 int /*<<< orphan*/ * FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext3_journalled_get_block ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct inode*) ; 
 struct page* FUNC11 (struct address_space*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct file *file, struct address_space *mapping,
				loff_t pos, unsigned len, unsigned flags,
				struct page **pagep, void **fsdata)
{
	struct inode *inode = mapping->host;
	int ret;
	handle_t *handle;
	int retries = 0;
	struct page *page;
	pgoff_t index;
	unsigned from, to;
	/* Reserve one block more for addition to orphan list in case
	 * we allocate blocks but write fails for some reason */
	int needed_blocks = FUNC10(inode) + 1;

	FUNC14(inode, pos, len, flags);

	index = pos >> PAGE_CACHE_SHIFT;
	from = pos & (PAGE_CACHE_SIZE - 1);
	to = from + len;

retry:
	page = FUNC11(mapping, index, flags);
	if (!page)
		return -ENOMEM;
	*pagep = page;

	handle = FUNC4(inode, needed_blocks);
	if (FUNC0(handle)) {
		FUNC15(page);
		FUNC13(page);
		ret = FUNC1(handle);
		goto out;
	}
	if (FUNC7(inode)) {
		ret = FUNC2(file, mapping, pos, len, flags, pagep,
					fsdata, ext3_journalled_get_block);
		if (ret)
			goto write_begin_failed;
		ret = FUNC16(handle, FUNC12(page), from, to,
					NULL, do_journal_get_write_access);
	} else {
		ret = FUNC2(file, mapping, pos, len, flags, pagep,
					fsdata, ext3_get_block);
	}

write_begin_failed:
	if (ret) {
		/*
		 * block_write_begin may have instantiated a few blocks
		 * outside i_size.  Trim these off again. Don't need
		 * i_size_read because we hold i_mutex.
		 *
		 * Add inode to orphan list in case we crash before truncate
		 * finishes. Do this only if ext3_can_truncate() agrees so
		 * that orphan processing code is happy.
		 */
		if (pos + len > inode->i_size && FUNC3(inode))
			FUNC6(handle, inode);
		FUNC5(handle);
		FUNC15(page);
		FUNC13(page);
		if (pos + len > inode->i_size)
			FUNC9(inode);
	}
	if (ret == -ENOSPC && FUNC8(inode->i_sb, &retries))
		goto retry;
out:
	return ret;
}