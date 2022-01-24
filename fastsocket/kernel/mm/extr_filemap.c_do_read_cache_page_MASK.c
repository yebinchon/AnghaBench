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
struct page {int /*<<< orphan*/  mapping; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct page* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 struct page* FUNC3 (struct address_space*,int /*<<< orphan*/ ,int (*) (void*,struct page*),void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static struct page *FUNC8(struct address_space *mapping,
				pgoff_t index,
				int (*filler)(void *, struct page *),
				void *data,
				gfp_t gfp)

{
	struct page *page;
	int err;

retry:
	page = FUNC3(mapping, index, filler, data, gfp);
	if (FUNC1(page))
		return page;
	if (FUNC2(page))
		goto out;

	FUNC4(page);
	if (!page->mapping) {
		FUNC7(page);
		FUNC6(page);
		goto retry;
	}
	if (FUNC2(page)) {
		FUNC7(page);
		goto out;
	}
	err = filler(data, page);
	if (err < 0) {
		FUNC6(page);
		return FUNC0(err);
	}
out:
	FUNC5(page);
	return page;
}