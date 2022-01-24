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
 unsigned int AOP_FLAG_NOFS ; 
 int EEXIST ; 
 int GFP_KERNEL ; 
 int __GFP_FS ; 
 struct page* FUNC0 (int) ; 
 int FUNC1 (struct page*,struct address_space*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC2 (struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int FUNC4 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

struct page *FUNC8(struct address_space *mapping,
					pgoff_t index, unsigned flags)
{
	int status;
	struct page *page;
	gfp_t gfp_notmask = 0;
	if (flags & AOP_FLAG_NOFS)
		gfp_notmask = __GFP_FS;
repeat:
	page = FUNC2(mapping, index);
	if (FUNC3(page))
		goto found;

	page = FUNC0(FUNC4(mapping) & ~gfp_notmask);
	if (!page)
		return NULL;
	status = FUNC1(page, mapping, index,
						GFP_KERNEL & ~gfp_notmask);
	if (FUNC6(status)) {
		FUNC5(page);
		if (status == -EEXIST)
			goto repeat;
		return NULL;
	}
found:
	FUNC7(page);
	return page;
}