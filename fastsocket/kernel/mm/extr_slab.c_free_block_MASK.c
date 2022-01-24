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
struct slab {scalar_t__ inuse; int /*<<< orphan*/  list; } ;
struct kmem_list3 {scalar_t__ free_objects; scalar_t__ free_limit; int /*<<< orphan*/  slabs_partial; int /*<<< orphan*/  slabs_free; } ;
struct kmem_cache {scalar_t__ num; struct kmem_list3** nodelists; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,struct slab*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kmem_cache*,struct slab*) ; 
 int /*<<< orphan*/  FUNC7 (struct kmem_cache*,struct slab*,void*,int) ; 
 struct slab* FUNC8 (void*) ; 

__attribute__((used)) static void FUNC9(struct kmem_cache *cachep, void **objpp, int nr_objects,
		       int node)
{
	int i;
	struct kmem_list3 *l3;

	for (i = 0; i < nr_objects; i++) {
		void *objp = objpp[i];
		struct slab *slabp;

		slabp = FUNC8(objp);
		l3 = cachep->nodelists[node];
		FUNC5(&slabp->list);
		FUNC2(cachep, node);
		FUNC1(cachep, slabp);
		FUNC7(cachep, slabp, objp, node);
		FUNC0(cachep);
		l3->free_objects++;
		FUNC1(cachep, slabp);

		/* fixup slab chains */
		if (slabp->inuse == 0) {
			if (l3->free_objects > l3->free_limit) {
				l3->free_objects -= cachep->num;
				/* No need to drop any previously held
				 * lock here, even if we have a off-slab slab
				 * descriptor it is guaranteed to come from
				 * a different cache, refer to comments before
				 * alloc_slabmgmt.
				 */
				FUNC6(cachep, slabp);
			} else {
				FUNC3(&slabp->list, &l3->slabs_free);
			}
		} else {
			/* Unconditionally move a slab to the end of the
			 * partial list on free - maximum time for the
			 * other objects to be freed, too.
			 */
			FUNC4(&slabp->list, &l3->slabs_partial);
		}
	}
}