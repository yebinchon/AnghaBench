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
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*,struct page*,void const*) ; 
 struct page* FUNC1 (void const*) ; 

int FUNC2(struct kmem_cache *s, const void *object)
{
	struct page *page;

	page = FUNC1(object);

	if (!page || s != page->slab)
		/* No slab or wrong slab */
		return 0;

	if (!FUNC0(s, page, object))
		return 0;

	/*
	 * We could also check if the object is on the slabs freelist.
	 * But this would be too expensive and it seems that the main
	 * purpose of kmem_ptr_valid() is to check if the object belongs
	 * to a certain slab.
	 */
	return 1;
}