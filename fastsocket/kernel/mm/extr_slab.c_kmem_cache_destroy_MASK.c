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
struct kmem_cache {int flags; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SLAB_DESTROY_BY_RCU ; 
 scalar_t__ FUNC1 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*) ; 
 int /*<<< orphan*/  cache_chain ; 
 int /*<<< orphan*/  cache_chain_mutex ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct kmem_cache*,char*) ; 
 scalar_t__ FUNC12 (int) ; 

void FUNC13(struct kmem_cache *cachep)
{
	FUNC0(!cachep || FUNC4());

	/* Find the cache in the chain of caches. */
	FUNC3();
	FUNC7(&cache_chain_mutex);
	/*
	 * the chain is never empty, cache_cache is never destroyed
	 */
	FUNC6(&cachep->next);
	if (FUNC1(cachep)) {
		FUNC11(cachep, "Can't free all objects");
		FUNC5(&cachep->next, &cache_chain);
		FUNC8(&cache_chain_mutex);
		FUNC9();
		return;
	}

	if (FUNC12(cachep->flags & SLAB_DESTROY_BY_RCU))
		FUNC10();

	FUNC2(cachep);
	FUNC8(&cache_chain_mutex);
	FUNC9();
}