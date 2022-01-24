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
struct page {int dummy; } ;
struct inode {int i_size; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int i_disksize; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_JDATA ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_end_fn ; 

__attribute__((used)) static int FUNC19(struct file *file,
				     struct address_space *mapping,
				     loff_t pos, unsigned len, unsigned copied,
				     struct page *page, void *fsdata)
{
	handle_t *handle = FUNC4();
	struct inode *inode = mapping->host;
	int ret = 0, ret2;
	int partial = 0;
	unsigned from, to;
	loff_t new_i_size;

	FUNC16(inode, pos, len, copied);
	from = pos & (PAGE_CACHE_SIZE - 1);
	to = from + len;

	if (copied < len) {
		if (!FUNC1(page))
			copied = 0;
		FUNC15(page, from+copied, to);
	}

	ret = FUNC18(handle, FUNC13(page), from,
				to, &partial, write_end_fn);
	if (!partial)
		FUNC2(page);
	new_i_size = pos + copied;
	if (new_i_size > inode->i_size)
		FUNC12(inode, pos+copied);
	FUNC9(inode, EXT4_STATE_JDATA);
	if (new_i_size > FUNC0(inode)->i_disksize) {
		FUNC11(inode, new_i_size);
		ret2 = FUNC6(handle, inode);
		if (!ret)
			ret = ret2;
	}

	FUNC17(page);
	FUNC14(page);
	if (pos + len > inode->i_size && FUNC3(inode))
		/* if we have allocated more blocks and copied
		 * less. We will have blocks allocated outside
		 * inode->i_size. So truncate them
		 */
		FUNC7(handle, inode);

	ret2 = FUNC5(handle);
	if (!ret)
		ret = ret2;
	if (pos + len > inode->i_size) {
		FUNC10(inode);
		/*
		 * If truncate failed early the inode might still be
		 * on the orphan list; we need to make sure the inode
		 * is removed from the orphan list in that case.
		 */
		if (inode->i_nlink)
			FUNC8(NULL, inode);
	}

	return ret ? ret : copied;
}