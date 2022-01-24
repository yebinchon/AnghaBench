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
typedef  int /*<<< orphan*/  wait_queue_t ;
struct TYPE_4__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  curr_nr; int /*<<< orphan*/  lock; int /*<<< orphan*/  pool_data; void* (* alloc ) (int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mempool_t ;
typedef  int gfp_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int __GFP_IO ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int __GFP_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ) ; 

void * FUNC11(mempool_t *pool, gfp_t gfp_mask)
{
	void *element;
	unsigned long flags;
	wait_queue_t wait;
	gfp_t gfp_temp;

	FUNC4(gfp_mask & __GFP_WAIT);

	gfp_mask |= __GFP_NOMEMALLOC;	/* don't allocate emergency reserves */
	gfp_mask |= __GFP_NORETRY;	/* don't loop in __alloc_pages */
	gfp_mask |= __GFP_NOWARN;	/* failures are OK */

	gfp_temp = gfp_mask & ~(__GFP_WAIT|__GFP_IO);

repeat_alloc:

	element = pool->alloc(gfp_temp, pool->pool_data);
	if (FUNC3(element != NULL))
		return element;

	FUNC8(&pool->lock, flags);
	if (FUNC3(pool->curr_nr)) {
		element = FUNC6(pool);
		FUNC9(&pool->lock, flags);
		return element;
	}
	FUNC9(&pool->lock, flags);

	/* We must not sleep in the GFP_ATOMIC case */
	if (!(gfp_mask & __GFP_WAIT))
		return NULL;

	/* Now start performing page reclaim */
	gfp_temp = gfp_mask;
	FUNC1(&wait);
	FUNC5(&pool->wait, &wait, TASK_UNINTERRUPTIBLE);
	FUNC7();
	if (!pool->curr_nr) {
		/*
		 * FIXME: this should be io_schedule().  The timeout is there
		 * as a workaround for some DM problems in 2.6.18.
		 */
		FUNC2(5*HZ);
	}
	FUNC0(&pool->wait, &wait);

	goto repeat_alloc;
}