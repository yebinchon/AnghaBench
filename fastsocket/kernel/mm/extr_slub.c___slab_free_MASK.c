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
struct page {void** freelist; int /*<<< orphan*/  inuse; } ;
struct kmem_cache_cpu {int dummy; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_ADD_PARTIAL ; 
 int /*<<< orphan*/  FREE_FROZEN ; 
 int /*<<< orphan*/  FREE_REMOVE_PARTIAL ; 
 int /*<<< orphan*/  FREE_SLAB ; 
 int /*<<< orphan*/  FREE_SLOWPATH ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 scalar_t__ SLABDEBUG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,struct page*,void*,unsigned long) ; 
 struct kmem_cache_cpu* FUNC5 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct kmem_cache*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct kmem_cache_cpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct kmem_cache *s, struct page *page,
			void *x, unsigned long addr, unsigned int offset)
{
	void *prior;
	void **object = (void *)x;
	struct kmem_cache_cpu *c;

	c = FUNC5(s, FUNC8());
	FUNC12(c, FREE_SLOWPATH);
	FUNC10(page);

	if (FUNC13(SLABDEBUG && FUNC0(page)))
		goto debug;

checks_ok:
	prior = object[offset] = page->freelist;
	page->freelist = object;
	page->inuse--;

	if (FUNC13(FUNC1(page))) {
		FUNC12(c, FREE_FROZEN);
		goto out_unlock;
	}

	if (FUNC13(!page->inuse))
		goto slab_empty;

	/*
	 * Objects left in the slab. If it was not on the partial list before
	 * then add it.
	 */
	if (FUNC13(!prior)) {
		FUNC2(FUNC6(s, FUNC7(page)), page, 1);
		FUNC12(c, FREE_ADD_PARTIAL);
	}

out_unlock:
	FUNC11(page);
	return;

slab_empty:
	if (prior) {
		/*
		 * Slab still on the partial list.
		 */
		FUNC9(s, page);
		FUNC12(c, FREE_REMOVE_PARTIAL);
	}
	FUNC11(page);
	FUNC12(c, FREE_SLAB);
	FUNC3(s, page);
	return;

debug:
	if (!FUNC4(s, page, x, addr))
		goto out_unlock;
	goto checks_ok;
}