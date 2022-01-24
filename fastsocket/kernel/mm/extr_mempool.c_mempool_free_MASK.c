#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ curr_nr; scalar_t__ min_nr; int /*<<< orphan*/  pool_data; int /*<<< orphan*/  (* free ) (void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;
typedef  TYPE_1__ mempool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(void *element, mempool_t *pool)
{
	unsigned long flags;

	if (FUNC5(element == NULL))
		return;

	FUNC1();
	if (pool->curr_nr < pool->min_nr) {
		FUNC2(&pool->lock, flags);
		if (pool->curr_nr < pool->min_nr) {
			FUNC0(pool, element);
			FUNC3(&pool->lock, flags);
			FUNC6(&pool->wait);
			return;
		}
		FUNC3(&pool->lock, flags);
	}
	pool->free(element, pool->pool_data);
}