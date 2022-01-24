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
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct file *file,
				struct address_space *mapping,
				loff_t pos, unsigned len, unsigned copied,
				struct page *page, void *fsdata)
{
	handle_t *handle = FUNC2();
	struct inode *inode = file->f_mapping->host;
	int ret;

	FUNC7(inode, pos, len, copied);
	copied = FUNC0(file, mapping, pos, len, copied, page, fsdata);
	FUNC9(inode, pos, copied);
	/*
	 * There may be allocated blocks outside of i_size because
	 * we failed to copy some data. Prepare for truncate.
	 */
	if (pos + len > inode->i_size && FUNC1(inode))
		FUNC4(handle, inode);
	ret = FUNC3(handle);
	FUNC8(page);
	FUNC6(page);

	if (pos + len > inode->i_size)
		FUNC5(inode);
	return ret ? ret : copied;
}