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
struct xv_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  total_pages; } ;
struct page {int dummy; } ;
struct block_header {scalar_t__ size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FREE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_USER0 ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PREV_FREE ; 
 scalar_t__ XV_ALIGN ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_header*,int /*<<< orphan*/ ) ; 
 struct block_header* FUNC2 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xv_pool*,struct page*,int /*<<< orphan*/ ,struct block_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct block_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct block_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct block_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct xv_pool *pool, gfp_t flags)
{
	struct page *page;
	struct block_header *block;

	page = FUNC0(flags);
	if (FUNC10(!page))
		return -ENOMEM;

	FUNC9(&pool->total_pages);

	FUNC7(&pool->lock);
	block = FUNC2(page, 0, KM_USER0);

	block->size = PAGE_SIZE - XV_ALIGN;
	FUNC6(block, BLOCK_FREE);
	FUNC1(block, PREV_FREE);
	FUNC5(block, 0);

	FUNC3(pool, page, 0, block);

	FUNC4(block, KM_USER0);
	FUNC8(&pool->lock);

	return 0;
}