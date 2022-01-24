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
 unsigned int AOP_FLAG_NOFS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ FALL_BACK_TO_NONDELALLOC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page**,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext4_da_get_block_prep ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page**,void**) ; 
 struct page* FUNC9 (struct address_space*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

__attribute__((used)) static int FUNC13(struct file *file, struct address_space *mapping,
			       loff_t pos, unsigned len, unsigned flags,
			       struct page **pagep, void **fsdata)
{
	int ret, retries = 0;
	struct page *page;
	pgoff_t index;
	unsigned from, to;
	struct inode *inode = mapping->host;
	handle_t *handle;

	index = pos >> PAGE_CACHE_SHIFT;
	from = pos & (PAGE_CACHE_SIZE - 1);
	to = from + len;

	if (FUNC5(inode->i_sb)) {
		*fsdata = (void *)FALL_BACK_TO_NONDELALLOC;
		return FUNC8(file, mapping, pos,
					len, flags, pagep, fsdata);
	}
	*fsdata = (void *)0;
	FUNC11(inode, pos, len, flags);
retry:
	/*
	 * With delayed allocation, we don't log the i_disksize update
	 * if there is delayed block allocation. But we still need
	 * to journalling the i_disksize update if writes to the end
	 * of file which has an already mapped buffer.
	 */
	handle = FUNC3(inode, 1);
	if (FUNC0(handle)) {
		ret = FUNC1(handle);
		goto out;
	}
	/* We cannot recurse into the filesystem as the transaction is already
	 * started */
	flags |= AOP_FLAG_NOFS;

	page = FUNC9(mapping, index, flags);
	if (!page) {
		FUNC4(handle);
		ret = -ENOMEM;
		goto out;
	}
	*pagep = page;

	ret = FUNC2(file, mapping, pos, len, flags, pagep, fsdata,
				ext4_da_get_block_prep);
	if (ret < 0) {
		FUNC12(page);
		FUNC4(handle);
		FUNC10(page);
		/*
		 * block_write_begin may have instantiated a few blocks
		 * outside i_size.  Trim these off again. Don't need
		 * i_size_read because we hold i_mutex.
		 */
		if (pos + len > inode->i_size)
			FUNC7(inode);
	}

	if (ret == -ENOSPC && FUNC6(inode->i_sb, &retries))
		goto retry;
out:
	return ret;
}