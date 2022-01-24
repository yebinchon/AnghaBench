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
typedef  size_t ulong ;
typedef  size_t u32 ;
struct xv_pool {size_t flbitmap; size_t* slbitmap; TYPE_1__* freelist; } ;
struct page {int dummy; } ;
struct TYPE_2__ {size_t offset; struct page* page; } ;

/* Variables and functions */
 size_t BITS_PER_LONG ; 
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t,size_t*) ; 

__attribute__((used)) static u32 FUNC3(struct xv_pool *pool, u32 size,
			struct page **page, u32 *offset)
{
	ulong flbitmap, slbitmap;
	u32 flindex, slindex, slbitstart;

	/* There are no free blocks in this pool */
	if (!pool->flbitmap)
		return 0;

	/* Get freelist index correspoding to this size */
	slindex = FUNC1(size);
	slbitmap = pool->slbitmap[slindex / BITS_PER_LONG];
	slbitstart = slindex % BITS_PER_LONG;

	/*
	 * If freelist is not empty at this index, we found the
	 * block - head of this list. This is approximate best-fit match.
	 */
	if (FUNC2(slbitstart, &slbitmap)) {
		*page = pool->freelist[slindex].page;
		*offset = pool->freelist[slindex].offset;
		return slindex;
	}

	/*
	 * No best-fit found. Search a bit further in bitmap for a free block.
	 * Second level bitmap consists of series of 32-bit chunks. Search
	 * further in the chunk where we expected a best-fit, starting from
	 * index location found above.
	 */
	slbitstart++;
	slbitmap >>= slbitstart;

	/* Skip this search if we were already at end of this bitmap chunk */
	if ((slbitstart != BITS_PER_LONG) && slbitmap) {
		slindex += FUNC0(slbitmap) + 1;
		*page = pool->freelist[slindex].page;
		*offset = pool->freelist[slindex].offset;
		return slindex;
	}

	/* Now do a full two-level bitmap search to find next nearest fit */
	flindex = slindex / BITS_PER_LONG;

	flbitmap = (pool->flbitmap) >> (flindex + 1);
	if (!flbitmap)
		return 0;

	flindex += FUNC0(flbitmap) + 1;
	slbitmap = pool->slbitmap[flindex];
	slindex = (flindex * BITS_PER_LONG) + FUNC0(slbitmap);
	*page = pool->freelist[slindex].page;
	*offset = pool->freelist[slindex].offset;

	return slindex;
}