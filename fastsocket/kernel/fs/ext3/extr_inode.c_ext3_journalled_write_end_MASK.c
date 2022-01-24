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
struct inode {int i_size; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int i_disksize; int /*<<< orphan*/  i_state; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT3_STATE_JDATA ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_end_fn ; 

__attribute__((used)) static int FUNC16(struct file *file,
				struct address_space *mapping,
				loff_t pos, unsigned len, unsigned copied,
				struct page *page, void *fsdata)
{
	handle_t *handle = FUNC4();
	struct inode *inode = mapping->host;
	int ret = 0, ret2;
	int partial = 0;
	unsigned from, to;

	FUNC13(inode, pos, len, copied);
	from = pos & (PAGE_CACHE_SIZE - 1);
	to = from + len;

	if (copied < len) {
		if (!FUNC1(page))
			copied = 0;
		FUNC12(page, from + copied, to);
		to = from + copied;
	}

	ret = FUNC15(handle, FUNC10(page), from,
				to, &partial, write_end_fn);
	if (!partial)
		FUNC2(page);

	if (pos + copied > inode->i_size)
		FUNC9(inode, pos + copied);
	/*
	 * There may be allocated blocks outside of i_size because
	 * we failed to copy some data. Prepare for truncate.
	 */
	if (pos + len > inode->i_size && FUNC3(inode))
		FUNC7(handle, inode);
	FUNC0(inode)->i_state |= EXT3_STATE_JDATA;
	if (inode->i_size > FUNC0(inode)->i_disksize) {
		FUNC0(inode)->i_disksize = inode->i_size;
		ret2 = FUNC6(handle, inode);
		if (!ret)
			ret = ret2;
	}

	ret2 = FUNC5(handle);
	if (!ret)
		ret = ret2;
	FUNC14(page);
	FUNC11(page);

	if (pos + len > inode->i_size)
		FUNC8(inode);
	return ret ? ret : copied;
}