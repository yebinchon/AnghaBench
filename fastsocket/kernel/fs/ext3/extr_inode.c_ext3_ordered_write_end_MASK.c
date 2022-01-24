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
struct inode {unsigned int i_size; } ;
struct file {TYPE_1__* f_mapping; } ;
struct address_space {int dummy; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int PAGE_CACHE_SIZE ; 
 unsigned int FUNC0 (struct file*,struct address_space*,int,unsigned int,unsigned int,struct page*,void*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  journal_dirty_data_fn ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct file *file,
				struct address_space *mapping,
				loff_t pos, unsigned len, unsigned copied,
				struct page *page, void *fsdata)
{
	handle_t *handle = FUNC2();
	struct inode *inode = file->f_mapping->host;
	unsigned from, to;
	int ret = 0, ret2;

	FUNC8(inode, pos, len, copied);
	copied = FUNC0(file, mapping, pos, len, copied, page, fsdata);

	from = pos & (PAGE_CACHE_SIZE - 1);
	to = from + copied;
	ret = FUNC11(handle, FUNC6(page),
		from, to, NULL, journal_dirty_data_fn);

	if (ret == 0)
		FUNC10(inode, pos, copied);
	/*
	 * There may be allocated blocks outside of i_size because
	 * we failed to copy some data. Prepare for truncate.
	 */
	if (pos + len > inode->i_size && FUNC1(inode))
		FUNC4(handle, inode);
	ret2 = FUNC3(handle);
	if (!ret)
		ret = ret2;
	FUNC9(page);
	FUNC7(page);

	if (pos + len > inode->i_size)
		FUNC5(inode);
	return ret ? ret : copied;
}