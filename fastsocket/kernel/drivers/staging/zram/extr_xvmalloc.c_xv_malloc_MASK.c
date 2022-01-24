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
typedef  scalar_t__ u32 ;
struct xv_pool {int /*<<< orphan*/  lock; } ;
struct page {int dummy; } ;
struct block_header {scalar_t__ size; } ;
typedef  int gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  BLOCK_FREE ; 
 struct block_header* FUNC1 (struct block_header*) ; 
 int ENOMEM ; 
 int GFP_NOWAIT ; 
 int /*<<< orphan*/  KM_USER0 ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PREV_FREE ; 
 scalar_t__ XV_ALIGN ; 
 scalar_t__ XV_MAX_ALLOC_SIZE ; 
 scalar_t__ XV_MIN_ALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct block_header*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct xv_pool*,scalar_t__,struct page**,scalar_t__*) ; 
 struct block_header* FUNC4 (struct page*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xv_pool*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct xv_pool*,struct page*,scalar_t__,struct block_header*) ; 
 int /*<<< orphan*/  FUNC7 (struct block_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xv_pool*,struct page*,scalar_t__,struct block_header*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct block_header*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct block_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct xv_pool *pool, u32 size, struct page **page,
		u32 *offset, gfp_t flags)
{
	int error;
	u32 index, tmpsize, origsize, tmpoffset;
	struct block_header *block, *tmpblock;

	*page = NULL;
	*offset = 0;
	origsize = size;

	if (FUNC13(!size || size > XV_MAX_ALLOC_SIZE))
		return -ENOMEM;

	size = FUNC0(size, XV_ALIGN);

	FUNC11(&pool->lock);

	index = FUNC3(pool, size, page, offset);

	if (!*page) {
		FUNC12(&pool->lock);
		if (flags & GFP_NOWAIT)
			return -ENOMEM;
		error = FUNC5(pool, flags);
		if (FUNC13(error))
			return error;

		FUNC11(&pool->lock);
		index = FUNC3(pool, size, page, offset);
	}

	if (!*page) {
		FUNC12(&pool->lock);
		return -ENOMEM;
	}

	block = FUNC4(*page, *offset, KM_USER0);

	FUNC8(pool, *page, *offset, block, index);

	/* Split the block if required */
	tmpoffset = *offset + size + XV_ALIGN;
	tmpsize = block->size - size;
	tmpblock = (struct block_header *)((char *)block + size + XV_ALIGN);
	if (tmpsize) {
		tmpblock->size = tmpsize - XV_ALIGN;
		FUNC10(tmpblock, BLOCK_FREE);
		FUNC2(tmpblock, PREV_FREE);

		FUNC9(tmpblock, *offset);
		if (tmpblock->size >= XV_MIN_ALLOC_SIZE)
			FUNC6(pool, *page, tmpoffset, tmpblock);

		if (tmpoffset + XV_ALIGN + tmpblock->size != PAGE_SIZE) {
			tmpblock = FUNC1(tmpblock);
			FUNC9(tmpblock, tmpoffset);
		}
	} else {
		/* This block is exact fit */
		if (tmpoffset != PAGE_SIZE)
			FUNC2(tmpblock, PREV_FREE);
	}

	block->size = origsize;
	FUNC2(block, BLOCK_FREE);

	FUNC7(block, KM_USER0);
	FUNC12(&pool->lock);

	*offset += XV_ALIGN;

	return 0;
}