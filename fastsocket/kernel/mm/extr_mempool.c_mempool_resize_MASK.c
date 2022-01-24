#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int min_nr; int curr_nr; void** elements; int /*<<< orphan*/  lock; int /*<<< orphan*/  pool_data; int /*<<< orphan*/  (* free ) (void*,int /*<<< orphan*/ ) ;void* (* alloc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mempool_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 void** FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,void**,int) ; 
 void* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(mempool_t *pool, int new_min_nr, gfp_t gfp_mask)
{
	void *element;
	void **new_elements;
	unsigned long flags;

	FUNC0(new_min_nr <= 0);

	FUNC6(&pool->lock, flags);
	if (new_min_nr <= pool->min_nr) {
		while (new_min_nr < pool->curr_nr) {
			element = FUNC5(pool);
			FUNC7(&pool->lock, flags);
			pool->free(element, pool->pool_data);
			FUNC6(&pool->lock, flags);
		}
		pool->min_nr = new_min_nr;
		goto out_unlock;
	}
	FUNC7(&pool->lock, flags);

	/* Grow the pool */
	new_elements = FUNC3(new_min_nr * sizeof(*new_elements), gfp_mask);
	if (!new_elements)
		return -ENOMEM;

	FUNC6(&pool->lock, flags);
	if (FUNC11(new_min_nr <= pool->min_nr)) {
		/* Raced, other resize will do our work */
		FUNC7(&pool->lock, flags);
		FUNC2(new_elements);
		goto out;
	}
	FUNC4(new_elements, pool->elements,
			pool->curr_nr * sizeof(*new_elements));
	FUNC2(pool->elements);
	pool->elements = new_elements;
	pool->min_nr = new_min_nr;

	while (pool->curr_nr < pool->min_nr) {
		FUNC7(&pool->lock, flags);
		element = pool->alloc(gfp_mask, pool->pool_data);
		if (!element)
			goto out;
		FUNC6(&pool->lock, flags);
		if (pool->curr_nr < pool->min_nr) {
			FUNC1(pool, element);
		} else {
			FUNC7(&pool->lock, flags);
			pool->free(element, pool->pool_data);	/* Raced */
			goto out;
		}
	}
out_unlock:
	FUNC7(&pool->lock, flags);
out:
	return 0;
}