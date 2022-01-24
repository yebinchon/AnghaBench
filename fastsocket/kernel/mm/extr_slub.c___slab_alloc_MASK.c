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
struct page {void** freelist; int /*<<< orphan*/  inuse; int /*<<< orphan*/  objects; } ;
struct kmem_cache_cpu {size_t offset; int node; struct page* page; void* freelist; } ;
struct kmem_cache {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_FROM_PARTIAL ; 
 int /*<<< orphan*/  ALLOC_REFILL ; 
 int /*<<< orphan*/  ALLOC_SLAB ; 
 int /*<<< orphan*/  ALLOC_SLOWPATH ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ SLABDEBUG ; 
 int __GFP_NOWARN ; 
 int __GFP_WAIT ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,struct page*,void**,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,struct kmem_cache_cpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,struct kmem_cache_cpu*) ; 
 struct kmem_cache_cpu* FUNC5 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (struct kmem_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct page* FUNC9 (struct kmem_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct kmem_cache_cpu*,int) ; 
 int FUNC11 (struct page*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct kmem_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct kmem_cache_cpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static void *FUNC19(struct kmem_cache *s, gfp_t gfpflags, int node,
			  unsigned long addr, struct kmem_cache_cpu *c)
{
	void **object;
	struct page *new;

	/* We handle __GFP_ZERO in the caller */
	gfpflags &= ~__GFP_ZERO;

	if (!c->page)
		goto new_slab;

	FUNC13(c->page);
	if (FUNC18(!FUNC10(c, node)))
		goto another_slab;

	FUNC17(c, ALLOC_REFILL);

load_freelist:
	object = c->page->freelist;
	if (FUNC18(!object))
		goto another_slab;
	if (FUNC18(SLABDEBUG && FUNC0(c->page)))
		goto debug;

	c->freelist = object[c->offset];
	c->page->inuse = c->page->objects;
	c->page->freelist = NULL;
	c->node = FUNC11(c->page);
unlock_out:
	FUNC15(c->page);
	FUNC17(c, ALLOC_SLOWPATH);
	return object;

another_slab:
	FUNC3(s, c);

new_slab:
	new = FUNC6(s, gfpflags, node);
	if (new) {
		c->page = new;
		FUNC17(c, ALLOC_FROM_PARTIAL);
		goto load_freelist;
	}

	if (gfpflags & __GFP_WAIT)
		FUNC8();

	new = FUNC9(s, gfpflags, node);

	if (gfpflags & __GFP_WAIT)
		FUNC7();

	if (new) {
		c = FUNC5(s, FUNC16());
		FUNC17(c, ALLOC_SLAB);
		if (c->page)
			FUNC4(s, c);
		FUNC13(new);
		FUNC1(new);
		c->page = new;
		goto load_freelist;
	}
	if (!(gfpflags & __GFP_NOWARN) && FUNC12())
		FUNC14(s, gfpflags, node);
	return NULL;
debug:
	if (!FUNC2(s, c->page, object, addr))
		goto another_slab;

	c->page->inuse++;
	c->page->freelist = object[c->offset];
	c->node = -1;
	goto unlock_out;
}