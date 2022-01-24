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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  get_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int ENOMEM ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct inode*,struct page*,unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 struct page* FUNC4 (struct address_space*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

int FUNC8(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned flags,
			struct page **pagep, void **fsdata,
			get_block_t *get_block)
{
	struct inode *inode = mapping->host;
	int status = 0;
	struct page *page;
	pgoff_t index;
	unsigned start, end;
	int ownpage = 0;

	index = pos >> PAGE_CACHE_SHIFT;
	start = pos & (PAGE_CACHE_SIZE - 1);
	end = start + len;

	page = *pagep;
	if (page == NULL) {
		ownpage = 1;
		page = FUNC4(mapping, index, flags);
		if (!page) {
			status = -ENOMEM;
			goto out;
		}
		*pagep = page;
	} else
		FUNC0(!FUNC2(page));

	status = FUNC3(inode, page, start, end, get_block);
	if (FUNC6(status)) {
		FUNC1(page);

		if (ownpage) {
			FUNC7(page);
			FUNC5(page);
			*pagep = NULL;
		}
	}

out:
	return status;
}