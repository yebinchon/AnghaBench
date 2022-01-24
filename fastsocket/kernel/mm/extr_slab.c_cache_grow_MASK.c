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
struct slab {int /*<<< orphan*/  list; } ;
struct kmem_list3 {size_t colour_next; int /*<<< orphan*/  list_lock; int /*<<< orphan*/  free_objects; int /*<<< orphan*/  slabs_free; } ;
struct kmem_cache {size_t colour; size_t colour_off; scalar_t__ num; struct kmem_list3** nodelists; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GFP_CONSTRAINT_MASK ; 
 int GFP_RECLAIM_MASK ; 
 int GFP_SLAB_BUG_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*) ; 
 int __GFP_WAIT ; 
 struct slab* FUNC2 (struct kmem_cache*,void*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,struct slab*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct kmem_cache*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct kmem_cache*,void*) ; 
 void* FUNC7 (struct kmem_cache*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct kmem_cache*,struct slab*,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct kmem_cache *cachep,
		gfp_t flags, int nodeid, void *objp)
{
	struct slab *slabp;
	size_t offset;
	gfp_t local_flags;
	struct kmem_list3 *l3;

	/*
	 * Be lazy and only check for valid flags here,  keeping it out of the
	 * critical path in kmem_cache_alloc().
	 */
	FUNC0(flags & GFP_SLAB_BUG_MASK);
	local_flags = flags & (GFP_CONSTRAINT_MASK|GFP_RECLAIM_MASK);

	/* Take the l3 list lock to change the colour_next on this node */
	FUNC4();
	l3 = cachep->nodelists[nodeid];
	FUNC12(&l3->list_lock);

	/* Get colour for the slab, and cal the next value. */
	offset = l3->colour_next;
	l3->colour_next++;
	if (l3->colour_next >= cachep->colour)
		l3->colour_next = 0;
	FUNC13(&l3->list_lock);

	offset *= cachep->colour_off;

	if (local_flags & __GFP_WAIT)
		FUNC10();

	/*
	 * The test for missing atomic flag is performed here, rather than
	 * the more obvious place, simply to reduce the critical path length
	 * in kmem_cache_alloc(). If a caller is seriously mis-behaving they
	 * will eventually be caught here (where it matters).
	 */
	FUNC5(cachep, flags);

	/*
	 * Get mem for the objs.  Attempt to allocate a physical page from
	 * 'nodeid'.
	 */
	if (!objp)
		objp = FUNC7(cachep, local_flags, nodeid);
	if (!objp)
		goto failed;

	/* Get slab management. */
	slabp = FUNC2(cachep, objp, offset,
			local_flags & ~GFP_CONSTRAINT_MASK, nodeid);
	if (!slabp)
		goto opps1;

	FUNC11(cachep, slabp, objp);

	FUNC3(cachep, slabp);

	if (local_flags & __GFP_WAIT)
		FUNC9();
	FUNC4();
	FUNC12(&l3->list_lock);

	/* Make slab active. */
	FUNC8(&slabp->list, &(l3->slabs_free));
	FUNC1(cachep);
	l3->free_objects += cachep->num;
	FUNC13(&l3->list_lock);
	return 1;
opps1:
	FUNC6(cachep, objp);
failed:
	if (local_flags & __GFP_WAIT)
		FUNC9();
	return 0;
}