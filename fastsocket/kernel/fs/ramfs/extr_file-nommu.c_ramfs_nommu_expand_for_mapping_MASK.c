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
struct inode {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int EFBIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int MAX_ORDER ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,size_t) ; 
 int FUNC6 (struct inode*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,unsigned int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 

int FUNC13(struct inode *inode, size_t newsize)
{
	unsigned long npages, xpages, loop, limit;
	struct page *pages;
	unsigned order;
	void *data;
	int ret;

	/* make various checks */
	order = FUNC4(newsize);
	if (FUNC11(order >= MAX_ORDER))
		return -EFBIG;

	ret = FUNC6(inode, newsize);
	if (ret)
		return ret;

	FUNC5(inode, newsize);

	/* allocate enough contiguous pages to be able to satisfy the
	 * request */
	pages = FUNC3(FUNC7(inode->i_mapping), order);
	if (!pages)
		return -ENOMEM;

	/* split the high-order page into an array of single pages */
	xpages = 1UL << order;
	npages = (newsize + PAGE_SIZE - 1) >> PAGE_SHIFT;

	FUNC10(pages, order);

	/* trim off any pages we don't actually require */
	for (loop = npages; loop < xpages; loop++)
		FUNC1(pages + loop);

	/* clear the memory we allocated */
	newsize = PAGE_SIZE * npages;
	data = FUNC9(pages);
	FUNC8(data, 0, newsize);

	/* attach all the pages to the inode's address space */
	for (loop = 0; loop < npages; loop++) {
		struct page *page = pages + loop;

		ret = FUNC2(page, inode->i_mapping, loop,
					GFP_KERNEL);
		if (ret < 0)
			goto add_error;

		/* prevent the page from being discarded on memory pressure */
		FUNC0(page);

		FUNC12(page);
	}

	return 0;

add_error:
	while (loop < npages)
		FUNC1(pages + loop++);
	return ret;
}