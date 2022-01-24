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
typedef  int u32 ;
struct xv_pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  total_pages; } ;
struct page {int dummy; } ;
struct block_header {int size; } ;
typedef  scalar_t__ page_start ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  BLOCK_FREE ; 
 struct block_header* FUNC1 (struct block_header*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PREV_FREE ; 
 int XV_ALIGN ; 
 scalar_t__ XV_MIN_ALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct block_header*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xv_pool*,struct page*,int,struct block_header*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xv_pool*,struct page*,int,struct block_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct block_header*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct block_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct block_header*,int /*<<< orphan*/ ) ; 

void FUNC16(struct xv_pool *pool, struct page *page, u32 offset)
{
	void *page_start;
	struct block_header *block, *tmpblock;

	offset -= XV_ALIGN;

	FUNC12(&pool->lock);

	page_start = FUNC6(page, 0, KM_USER0);
	block = (struct block_header *)((char *)page_start + offset);

	/* Catch double free bugs */
	FUNC2(FUNC15(block, BLOCK_FREE));

	block->size = FUNC0(block->size, XV_ALIGN);

	tmpblock = FUNC1(block);
	if (offset + block->size + XV_ALIGN == PAGE_SIZE)
		tmpblock = NULL;

	/* Merge next block if its free */
	if (tmpblock && FUNC15(tmpblock, BLOCK_FREE)) {
		/*
		 * Blocks smaller than XV_MIN_ALLOC_SIZE
		 * are not inserted in any free list.
		 */
		if (tmpblock->size >= XV_MIN_ALLOC_SIZE) {
			FUNC9(pool, page,
				    offset + block->size + XV_ALIGN, tmpblock,
				    FUNC5(tmpblock->size));
		}
		block->size += tmpblock->size + XV_ALIGN;
	}

	/* Merge previous block if its free */
	if (FUNC15(block, PREV_FREE)) {
		tmpblock = (struct block_header *)((char *)(page_start) +
						FUNC4(block));
		offset = offset - tmpblock->size - XV_ALIGN;

		if (tmpblock->size >= XV_MIN_ALLOC_SIZE)
			FUNC9(pool, page, offset, tmpblock,
				    FUNC5(tmpblock->size));

		tmpblock->size += block->size + XV_ALIGN;
		block = tmpblock;
	}

	/* No used objects in this page. Free it. */
	if (block->size == PAGE_SIZE - XV_ALIGN) {
		FUNC8(page_start, KM_USER0);
		FUNC13(&pool->lock);

		FUNC3(page);
		FUNC14(&pool->total_pages);
		return;
	}

	FUNC11(block, BLOCK_FREE);
	if (block->size >= XV_MIN_ALLOC_SIZE)
		FUNC7(pool, page, offset, block);

	if (offset + block->size + XV_ALIGN != PAGE_SIZE) {
		tmpblock = FUNC1(block);
		FUNC11(tmpblock, PREV_FREE);
		FUNC10(tmpblock, offset);
	}

	FUNC8(page_start, KM_USER0);
	FUNC13(&pool->lock);
}