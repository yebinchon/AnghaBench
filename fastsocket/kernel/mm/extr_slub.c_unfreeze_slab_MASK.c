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
struct page {scalar_t__ freelist; scalar_t__ inuse; } ;
struct kmem_cache_node {scalar_t__ nr_partial; } ;
struct kmem_cache_cpu {int dummy; } ;
struct kmem_cache {int flags; scalar_t__ min_partial; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEACTIVATE_EMPTY ; 
 int /*<<< orphan*/  DEACTIVATE_FULL ; 
 int /*<<< orphan*/  DEACTIVATE_TO_HEAD ; 
 int /*<<< orphan*/  DEACTIVATE_TO_TAIL ; 
 int /*<<< orphan*/  FREE_SLAB ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ SLABDEBUG ; 
 int SLAB_STORE_USER ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache_node*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache_node*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,struct page*) ; 
 struct kmem_cache_cpu* FUNC5 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 struct kmem_cache_node* FUNC6 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct kmem_cache_cpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct kmem_cache *s, struct page *page, int tail)
{
	struct kmem_cache_node *n = FUNC6(s, FUNC7(page));
	struct kmem_cache_cpu *c = FUNC5(s, FUNC10());

	FUNC1(page);
	if (page->inuse) {

		if (page->freelist) {
			FUNC3(n, page, tail);
			FUNC11(c, tail ? DEACTIVATE_TO_TAIL : DEACTIVATE_TO_HEAD);
		} else {
			FUNC11(c, DEACTIVATE_FULL);
			if (SLABDEBUG && FUNC0(page) &&
						(s->flags & SLAB_STORE_USER))
				FUNC2(n, page);
		}
		FUNC9(page);
	} else {
		FUNC11(c, DEACTIVATE_EMPTY);
		if (n->nr_partial < s->min_partial) {
			/*
			 * Adding an empty slab to the partial slabs in order
			 * to avoid page allocator overhead. This slab needs
			 * to come after the other slabs with objects in
			 * so that the others get filled first. That way the
			 * size of the partial list stays small.
			 *
			 * kmem_cache_shrink can reclaim any empty slabs from
			 * the partial list.
			 */
			FUNC3(n, page, 1);
			FUNC9(page);
		} else {
			FUNC9(page);
			FUNC11(FUNC5(s, FUNC8()), FREE_SLAB);
			FUNC4(s, page);
		}
	}
}