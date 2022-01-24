#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int min_nr; int curr_nr; void* pool_data; void* (* alloc ) (int,void*) ;int /*<<< orphan*/ * free; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; void* elements; } ;
typedef  TYPE_1__ mempool_t ;
typedef  int /*<<< orphan*/  mempool_free_t ;
typedef  void* (* mempool_alloc_t ) (int,void*) ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 void* FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int,void*) ; 
 scalar_t__ FUNC7 (int) ; 

mempool_t *FUNC8(int min_nr, mempool_alloc_t *alloc_fn,
			mempool_free_t *free_fn, void *pool_data, int node_id)
{
	mempool_t *pool;
	pool = FUNC4(sizeof(*pool), GFP_KERNEL | __GFP_ZERO, node_id);
	if (!pool)
		return NULL;
	pool->elements = FUNC4(min_nr * sizeof(void *),
					GFP_KERNEL, node_id);
	if (!pool->elements) {
		FUNC3(pool);
		return NULL;
	}
	FUNC5(&pool->lock);
	pool->min_nr = min_nr;
	pool->pool_data = pool_data;
	FUNC2(&pool->wait);
	pool->alloc = *alloc_fn;
	pool->free = free_fn;

	/*
	 * First pre-allocate the guaranteed number of buffers.
	 */
	while (pool->curr_nr < pool->min_nr) {
		void *element;

		element = pool->alloc(GFP_KERNEL, pool->pool_data);
		if (FUNC7(!element)) {
			FUNC1(pool);
			return NULL;
		}
		FUNC0(pool, element);
	}
	return pool;
}