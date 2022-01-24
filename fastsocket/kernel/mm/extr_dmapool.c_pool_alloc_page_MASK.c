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
struct dma_pool {int /*<<< orphan*/  page_list; int /*<<< orphan*/  allocation; int /*<<< orphan*/  dev; } ;
struct dma_page {scalar_t__ offset; scalar_t__ in_use; int /*<<< orphan*/  page_list; scalar_t__ vaddr; int /*<<< orphan*/  dma; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  POOL_POISON_FREED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_page*) ; 
 struct dma_page* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_pool*,struct dma_page*) ; 

__attribute__((used)) static struct dma_page *FUNC6(struct dma_pool *pool, gfp_t mem_flags)
{
	struct dma_page *page;

	page = FUNC2(sizeof(*page), mem_flags);
	if (!page)
		return NULL;
	page->vaddr = FUNC0(pool->dev, pool->allocation,
					 &page->dma, mem_flags);
	if (page->vaddr) {
#ifdef	DMAPOOL_DEBUG
		memset(page->vaddr, POOL_POISON_FREED, pool->allocation);
#endif
		FUNC5(pool, page);
		FUNC3(&page->page_list, &pool->page_list);
		page->in_use = 0;
		page->offset = 0;
	} else {
		FUNC1(page);
		page = NULL;
	}
	return page;
}