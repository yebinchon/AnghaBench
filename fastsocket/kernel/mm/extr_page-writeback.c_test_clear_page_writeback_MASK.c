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
struct backing_dev_info {int dummy; } ;
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; struct backing_dev_info* backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDI_WRITEBACK ; 
 int /*<<< orphan*/  NR_WRITEBACK ; 
 int /*<<< orphan*/  PAGECACHE_TAG_WRITEBACK ; 
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct backing_dev_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct address_space* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct page *page)
{
	struct address_space *mapping = FUNC6(page);
	int ret;

	if (mapping) {
		struct backing_dev_info *bdi = mapping->backing_dev_info;
		unsigned long flags;

		FUNC8(&mapping->tree_lock, flags);
		ret = FUNC0(page);
		if (ret) {
			FUNC7(&mapping->page_tree,
						FUNC5(page),
						PAGECACHE_TAG_WRITEBACK);
			if (FUNC3(bdi)) {
				FUNC2(bdi, BDI_WRITEBACK);
				FUNC1(bdi);
			}
		}
		FUNC9(&mapping->tree_lock, flags);
	} else {
		ret = FUNC0(page);
	}
	if (ret)
		FUNC4(page, NR_WRITEBACK);
	return ret;
}