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
struct page {struct kmem_cache* slab; } ;
struct kmem_cache {int flags; size_t objsize; size_t inuse; size_t size; } ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int SLAB_DESTROY_BY_RCU ; 
 int SLAB_POISON ; 
 int SLAB_RED_ZONE ; 
 int SLAB_STORE_USER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void const* ZERO_SIZE_PTR ; 
 size_t FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct page* FUNC5 (void const*) ; 

size_t FUNC6(const void *object)
{
	struct page *page;
	struct kmem_cache *s;

	if (FUNC4(object == ZERO_SIZE_PTR))
		return 0;

	page = FUNC5(object);

	if (FUNC4(!FUNC1(page))) {
		FUNC2(!FUNC0(page));
		return PAGE_SIZE << FUNC3(page);
	}
	s = page->slab;

#ifdef CONFIG_SLUB_DEBUG
	/*
	 * Debugging requires use of the padding between object
	 * and whatever may come after it.
	 */
	if (s->flags & (SLAB_RED_ZONE | SLAB_POISON))
		return s->objsize;

#endif
	/*
	 * If we have the need to store the freelist pointer
	 * back there or track user information then we can
	 * only use the space before that information.
	 */
	if (s->flags & (SLAB_DESTROY_BY_RCU | SLAB_STORE_USER))
		return s->inuse;
	/*
	 * Else we can use all the padding etc for the allocation
	 */
	return s->size;
}