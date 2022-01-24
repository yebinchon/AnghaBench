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
struct kmem_cache {char const* name; void (* ctor ) (void*) ;size_t objsize; size_t align; size_t size; int refcount; int remote_node_defrag_ratio; scalar_t__ offset; int /*<<< orphan*/  oo; int /*<<< orphan*/  flags; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_METADATA_FLAGS ; 
 unsigned long SLAB_PANIC ; 
 int SLUB_DMA ; 
 scalar_t__ FUNC0 (struct kmem_cache*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,int) ; 
 scalar_t__ disable_higher_order_debug ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct kmem_cache*,int) ; 
 int /*<<< orphan*/  FUNC6 (size_t,unsigned long,char const*,void (*) (void*)) ; 
 int /*<<< orphan*/  kmem_size ; 
 int /*<<< orphan*/  FUNC7 (struct kmem_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,unsigned long,size_t,int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct kmem_cache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct kmem_cache *s, gfp_t gfpflags,
		const char *name, size_t size,
		size_t align, unsigned long flags,
		void (*ctor)(void *))
{
	FUNC7(s, 0, kmem_size);
	s->name = name;
	s->ctor = ctor;
	s->objsize = size;
	s->align = align;
	s->flags = FUNC6(size, flags, name, ctor);

	if (!FUNC1(s, -1))
		goto error;
	if (disable_higher_order_debug) {
		/*
		 * Disable debugging flags that store metadata if the min slab
		 * order increased.
		 */
		if (FUNC3(s->size) > FUNC3(s->objsize)) {
			s->flags &= ~DEBUG_METADATA_FLAGS;
			s->offset = 0;
			if (!FUNC1(s, -1))
				goto error;
		}
	}

	/*
	 * The larger the object size is, the more pages we want on the partial
	 * list to avoid pounding the page allocator excessively.
	 */
	FUNC10(s, FUNC4(s->size));
	s->refcount = 1;
#ifdef CONFIG_NUMA
	s->remote_node_defrag_ratio = 1000;
#endif
	if (!FUNC5(s, gfpflags & ~SLUB_DMA))
		goto error;

	if (FUNC0(s, gfpflags & ~SLUB_DMA))
		return 1;
	FUNC2(s);
error:
	if (flags & SLAB_PANIC)
		FUNC9("Cannot create slab %s size=%lu realsize=%u "
			"order=%u offset=%u flags=%lx\n",
			s->name, (unsigned long)size, s->size, FUNC8(s->oo),
			s->offset, flags);
	return 0;
}