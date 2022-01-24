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
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 struct page* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int __GFP_COLD ; 
 struct page* FUNC1 (int) ; 
 int FUNC2 (struct page*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct page *FUNC6(struct address_space *mapping,
				pgoff_t index,
				int (*filler)(void *, struct page *),
				void *data,
				gfp_t gfp)
{
	struct page *page;
	int err;
repeat:
	page = FUNC3(mapping, index);
	if (!page) {
		page = FUNC1(gfp | __GFP_COLD);
		if (!page)
			return FUNC0(-ENOMEM);
		err = FUNC2(page, mapping, index, GFP_KERNEL);
		if (FUNC5(err)) {
			FUNC4(page);
			if (err == -EEXIST)
				goto repeat;
			/* Presumably ENOMEM for radix tree node */
			return FUNC0(err);
		}
		err = filler(data, page);
		if (err < 0) {
			FUNC4(page);
			page = FUNC0(err);
		}
	}
	return page;
}