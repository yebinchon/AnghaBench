#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rds_iw_mr_pool {scalar_t__ max_items; int /*<<< orphan*/  item_count; } ;
struct TYPE_2__ {struct rds_iw_mr* m_mr; int /*<<< orphan*/  m_list; int /*<<< orphan*/  m_lock; } ;
struct rds_iw_mr {TYPE_1__ mapping; } ;
struct rds_iw_device {struct rds_iw_mr_pool* mr_pool; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 struct rds_iw_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_iw_mr*) ; 
 struct rds_iw_mr* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_iw_mr_pool*,struct rds_iw_mr*) ; 
 int /*<<< orphan*/  FUNC7 (struct rds_iw_mr_pool*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rds_iw_mr_pool*,struct rds_iw_mr*) ; 
 struct rds_iw_mr* FUNC9 (struct rds_iw_mr_pool*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_iw_rdma_mr_alloc ; 
 int /*<<< orphan*/  s_iw_rdma_mr_pool_depleted ; 
 int /*<<< orphan*/  s_iw_rdma_mr_pool_wait ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rds_iw_mr *FUNC12(struct rds_iw_device *rds_iwdev)
{
	struct rds_iw_mr_pool *pool = rds_iwdev->mr_pool;
	struct rds_iw_mr *ibmr = NULL;
	int err = 0, iter = 0;

	while (1) {
		ibmr = FUNC9(pool);
		if (ibmr)
			return ibmr;

		/* No clean MRs - now we have the choice of either
		 * allocating a fresh MR up to the limit imposed by the
		 * driver, or flush any dirty unused MRs.
		 * We try to avoid stalling in the send path if possible,
		 * so we allocate as long as we're allowed to.
		 *
		 * We're fussy with enforcing the FMR limit, though. If the driver
		 * tells us we can't use more than N fmrs, we shouldn't start
		 * arguing with it */
		if (FUNC3(&pool->item_count) <= pool->max_items)
			break;

		FUNC2(&pool->item_count);

		if (++iter > 2) {
			FUNC10(s_iw_rdma_mr_pool_depleted);
			return FUNC0(-EAGAIN);
		}

		/* We do have some empty MRs. Flush them out. */
		FUNC10(s_iw_rdma_mr_pool_wait);
		FUNC7(pool, 0);
	}

	ibmr = FUNC5(sizeof(*ibmr), GFP_KERNEL);
	if (!ibmr) {
		err = -ENOMEM;
		goto out_no_cigar;
	}

	FUNC11(&ibmr->mapping.m_lock);
	FUNC1(&ibmr->mapping.m_list);
	ibmr->mapping.m_mr = ibmr;

	err = FUNC8(pool, ibmr);
	if (err)
		goto out_no_cigar;

	FUNC10(s_iw_rdma_mr_alloc);
	return ibmr;

out_no_cigar:
	if (ibmr) {
		FUNC6(pool, ibmr);
		FUNC4(ibmr);
	}
	FUNC2(&pool->item_count);
	return FUNC0(err);
}