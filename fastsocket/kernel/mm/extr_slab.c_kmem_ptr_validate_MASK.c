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
struct kmem_cache {unsigned long buffer_size; } ;

/* Variables and functions */
 int BYTES_PER_WORD ; 
 unsigned long PAGE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ high_memory ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 struct kmem_cache* FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct page* FUNC4 (void const*) ; 

int FUNC5(struct kmem_cache *cachep, const void *ptr)
{
	unsigned long addr = (unsigned long)ptr;
	unsigned long min_addr = PAGE_OFFSET;
	unsigned long align_mask = BYTES_PER_WORD - 1;
	unsigned long size = cachep->buffer_size;
	struct page *page;

	if (FUNC3(addr < min_addr))
		goto out;
	if (FUNC3(addr > (unsigned long)high_memory - size))
		goto out;
	if (FUNC3(addr & align_mask))
		goto out;
	if (FUNC3(!FUNC1(addr)))
		goto out;
	if (FUNC3(!FUNC1(addr + size - 1)))
		goto out;
	page = FUNC4(ptr);
	if (FUNC3(!FUNC0(page)))
		goto out;
	if (FUNC3(FUNC2(page) != cachep))
		goto out;
	return 1;
out:
	return 0;
}