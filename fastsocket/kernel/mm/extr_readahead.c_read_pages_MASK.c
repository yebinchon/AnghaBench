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
struct page {int /*<<< orphan*/  index; int /*<<< orphan*/  lru; } ;
struct list_head {int dummy; } ;
struct file {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* readpages ) (struct file*,struct address_space*,struct list_head*,unsigned int) ;int /*<<< orphan*/  (* readpage ) (struct file*,struct page*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct page* FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*) ; 
 int FUNC5 (struct file*,struct address_space*,struct list_head*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct page*) ; 

__attribute__((used)) static int FUNC7(struct address_space *mapping, struct file *filp,
		struct list_head *pages, unsigned nr_pages)
{
	unsigned page_idx;
	int ret;

	if (mapping->a_ops->readpages) {
		ret = mapping->a_ops->readpages(filp, mapping, pages, nr_pages);
		/* Clean up the remaining pages */
		FUNC4(pages);
		goto out;
	}

	for (page_idx = 0; page_idx < nr_pages; page_idx++) {
		struct page *page = FUNC2(pages);
		FUNC1(&page->lru);
		if (!FUNC0(page, mapping,
					page->index, GFP_KERNEL)) {
			mapping->a_ops->readpage(filp, page);
		}
		FUNC3(page);
	}
	ret = 0;
out:
	return ret;
}