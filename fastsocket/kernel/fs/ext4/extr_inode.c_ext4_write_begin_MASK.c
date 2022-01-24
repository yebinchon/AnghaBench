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
struct inode {int i_size; int /*<<< orphan*/  i_sb; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 unsigned int AOP_FLAG_NOFS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page**,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_journal_get_write_access ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  ext4_get_block ; 
 int /*<<< orphan*/ * FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext4_journalled_get_block ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*) ; 
 struct page* FUNC12 (struct address_space*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct file *file, struct address_space *mapping,
			    loff_t pos, unsigned len, unsigned flags,
			    struct page **pagep, void **fsdata)
{
	struct inode *inode = mapping->host;
	int ret, needed_blocks;
	handle_t *handle;
	int retries = 0;
	struct page *page;
	pgoff_t index;
	unsigned from, to;

	FUNC15(inode, pos, len, flags);
	/*
	 * Reserve one block more for addition to orphan list in case
	 * we allocate blocks but write fails for some reason
	 */
	needed_blocks = FUNC11(inode) + 1;
	index = pos >> PAGE_CACHE_SHIFT;
	from = pos & (PAGE_CACHE_SIZE - 1);
	to = from + len;

retry:
	handle = FUNC4(inode, needed_blocks);
	if (FUNC0(handle)) {
		ret = FUNC1(handle);
		goto out;
	}

	/* We cannot recurse into the filesystem as the transaction is already
	 * started */
	flags |= AOP_FLAG_NOFS;

	page = FUNC12(mapping, index, flags);
	if (!page) {
		FUNC5(handle);
		ret = -ENOMEM;
		goto out;
	}
	*pagep = page;

	if (!FUNC8(inode))
		ret = FUNC2(file, mapping, pos, len, flags, pagep,
				fsdata, ext4_get_block);
	else {
		ret = FUNC2(file, mapping, pos, len, flags, pagep,
				fsdata, ext4_journalled_get_block);
		if (!ret)
			ret = FUNC17(handle, FUNC13(page),
				from, to, NULL, do_journal_get_write_access);
	}

	if (ret) {
		FUNC16(page);
		FUNC14(page);
		/*
		 * block_write_begin may have instantiated a few blocks
		 * outside i_size.  Trim these off again. Don't need
		 * i_size_read because we hold i_mutex.
		 *
		 * Add inode to orphan list in case we crash before
		 * truncate finishes
		 */
		if (pos + len > inode->i_size && FUNC3(inode))
			FUNC6(handle, inode);

		FUNC5(handle);
		if (pos + len > inode->i_size) {
			FUNC10(inode);
			/*
			 * If truncate failed early the inode might
			 * still be on the orphan list; we need to
			 * make sure the inode is removed from the
			 * orphan list in that case.
			 */
			if (inode->i_nlink)
				FUNC7(NULL, inode);
		}
	}

	if (ret == -ENOSPC && FUNC9(inode->i_sb, &retries))
		goto retry;
out:
	return ret;
}