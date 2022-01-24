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
struct kmem_cache {int dummy; } ;
struct array_cache {size_t avail; int touched; void** entry; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*) ; 
 void* FUNC2 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct array_cache* FUNC4 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 scalar_t__ FUNC6 (size_t) ; 

__attribute__((used)) static inline void *FUNC7(struct kmem_cache *cachep, gfp_t flags)
{
	void *objp;
	struct array_cache *ac;

	FUNC3();

	ac = FUNC4(cachep);
	if (FUNC6(ac->avail)) {
		FUNC0(cachep);
		ac->touched = 1;
		objp = ac->entry[--ac->avail];
	} else {
		FUNC1(cachep);
		objp = FUNC2(cachep, flags);
		/*
		 * the 'ac' may be updated by cache_alloc_refill(),
		 * and kmemleak_erase() requires its correct value.
		 */
		ac = FUNC4(cachep);
	}
	/*
	 * To avoid a false negative, if an object that is in one of the
	 * per-CPU caches is leaked, we need to make sure kmemleak doesn't
	 * treat the array pointers as a reference to the object.
	 */
	FUNC5(&ac->entry[ac->avail]);
	return objp;
}