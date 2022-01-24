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
struct slab_rcu {int /*<<< orphan*/  head; void* addr; struct kmem_cache* cachep; } ;
struct slab {int /*<<< orphan*/  colouroff; int /*<<< orphan*/  s_mem; } ;
struct kmem_cache {int flags; int /*<<< orphan*/  slabp_cache; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kmem_cache*) ; 
 int SLAB_DESTROY_BY_RCU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct slab*) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,void*) ; 
 int /*<<< orphan*/  kmem_rcu_free ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,struct slab*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct kmem_cache *cachep, struct slab *slabp)
{
	void *addr = slabp->s_mem - slabp->colouroff;

	FUNC4(cachep, slabp);
	if (FUNC5(cachep->flags & SLAB_DESTROY_BY_RCU)) {
		struct slab_rcu *slab_rcu;

		slab_rcu = (struct slab_rcu *)slabp;
		slab_rcu->cachep = cachep;
		slab_rcu->addr = addr;
		FUNC1(&slab_rcu->head, kmem_rcu_free);
	} else {
		FUNC3(cachep, addr);
		if (FUNC0(cachep))
			FUNC2(cachep->slabp_cache, slabp);
	}
}