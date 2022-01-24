#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rds_iw_mr_pool {int max_free_pinned; int max_items; int /*<<< orphan*/  flush_worker; int /*<<< orphan*/  dirty_count; int /*<<< orphan*/  free_pinned; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {TYPE_1__ m_sg; } ;
struct rds_iw_mr {TYPE_2__ mapping; TYPE_3__* device; } ;
struct TYPE_6__ {struct rds_iw_mr_pool* mr_pool; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_iw_mr_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_iw_mr_pool*,struct rds_iw_mr*) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

void FUNC7(void *trans_private, int invalidate)
{
	struct rds_iw_mr *ibmr = trans_private;
	struct rds_iw_mr_pool *pool = ibmr->device->mr_pool;

	FUNC6("RDS/IW: free_mr nents %u\n", ibmr->mapping.m_sg.len);
	if (!pool)
		return;

	/* Return it to the pool's free list */
	FUNC5(pool, ibmr);

	/* If we've pinned too many pages, request a flush */
	if (FUNC0(&pool->free_pinned) >= pool->max_free_pinned
	 || FUNC0(&pool->dirty_count) >= pool->max_items / 10)
		FUNC3(rds_wq, &pool->flush_worker);

	if (invalidate) {
		if (FUNC2(!FUNC1())) {
			FUNC4(pool, 0);
		} else {
			/* We get here if the user created a MR marked
			 * as use_once and invalidate at the same time. */
			FUNC3(rds_wq, &pool->flush_worker);
		}
	}
}