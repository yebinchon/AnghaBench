#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct address_space {int dummy; } ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_5__ {struct page* v; } ;
struct TYPE_4__ {struct address_space* i_mapping; } ;
typedef  TYPE_2__ Sector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int PAGE_CACHE_SHIFT ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct page* FUNC4 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

unsigned char *FUNC5(struct block_device *bdev, sector_t n, Sector *p)
{
	struct address_space *mapping = bdev->bd_inode->i_mapping;
	struct page *page;

	page = FUNC4(mapping, (pgoff_t)(n >> (PAGE_CACHE_SHIFT-9)),
				 NULL);
	if (!FUNC0(page)) {
		if (FUNC1(page))
			goto fail;
		p->v = page;
		return (unsigned char *)FUNC2(page) +  ((n & ((1 << (PAGE_CACHE_SHIFT - 9)) - 1)) << 9);
fail:
		FUNC3(page);
	}
	p->v = NULL;
	return NULL;
}