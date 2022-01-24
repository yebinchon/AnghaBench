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
struct slab {size_t free; int nodeid; int /*<<< orphan*/  inuse; } ;
struct kmem_cache {int dummy; } ;
typedef  size_t kmem_bufctl_t ;

/* Variables and functions */
 size_t BUFCTL_FREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (struct kmem_cache*,struct slab*,size_t) ; 
 size_t* FUNC2 (struct slab*) ; 

__attribute__((used)) static void *FUNC3(struct kmem_cache *cachep, struct slab *slabp,
				int nodeid)
{
	void *objp = FUNC1(cachep, slabp, slabp->free);
	kmem_bufctl_t next;

	slabp->inuse++;
	next = FUNC2(slabp)[slabp->free];
#if DEBUG
	slab_bufctl(slabp)[slabp->free] = BUFCTL_FREE;
	WARN_ON(slabp->nodeid != nodeid);
#endif
	slabp->free = next;

	return objp;
}