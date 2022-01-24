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
struct inode {unsigned int i_size; scalar_t__ i_nlink; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct file *file,
				    struct address_space *mapping,
				    loff_t pos, unsigned len, unsigned copied,
				    struct page *page, void *fsdata)
{
	handle_t *handle = FUNC2();
	struct inode *inode = mapping->host;
	int ret = 0, ret2;

	FUNC7(inode, pos, len, copied);
	ret2 = FUNC1(file, mapping, pos, len, copied,
							page, fsdata);
	copied = ret2;
	if (pos + len > inode->i_size && FUNC0(inode))
		/* if we have allocated more blocks and copied
		 * less. We will have blocks allocated outside
		 * inode->i_size. So truncate them
		 */
		FUNC4(handle, inode);

	if (ret2 < 0)
		ret = ret2;

	ret2 = FUNC3(handle);
	if (!ret)
		ret = ret2;

	if (pos + len > inode->i_size) {
		FUNC6(inode);
		/*
		 * If truncate failed early the inode might still be
		 * on the orphan list; we need to make sure the inode
		 * is removed from the orphan list in that case.
		 */
		if (inode->i_nlink)
			FUNC5(NULL, inode);
	}

	return ret ? ret : copied;
}