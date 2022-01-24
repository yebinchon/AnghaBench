#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct scatterlist {int dummy; } ;
struct rds_iw_mr_pool {scalar_t__ max_message_size; struct rds_iw_device* device; } ;
struct TYPE_5__ {scalar_t__ dma_len; int dma_npages; } ;
struct rds_iw_mapping {TYPE_2__ m_sg; } ;
struct rds_iw_mr {TYPE_1__* page_list; struct rds_iw_mapping mapping; } ;
struct rds_iw_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * page_list; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct rds_iw_device*,TYPE_2__*) ; 
 int FUNC4 (struct rds_iw_mapping*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct scatterlist*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_iw_rdma_mr_used ; 

__attribute__((used)) static int FUNC7(struct rds_iw_mr_pool *pool,
			struct rds_iw_mr *ibmr,
			struct scatterlist *sg,
			unsigned int sg_len)
{
	struct rds_iw_device *rds_iwdev = pool->device;
	struct rds_iw_mapping *mapping = &ibmr->mapping;
	u64 *dma_pages;
	int i, ret = 0;

	FUNC5(&mapping->m_sg, sg, sg_len);

	dma_pages = FUNC3(rds_iwdev, &mapping->m_sg);
	if (FUNC0(dma_pages)) {
		ret = FUNC1(dma_pages);
		dma_pages = NULL;
		goto out;
	}

	if (mapping->m_sg.dma_len > pool->max_message_size) {
		ret = -EMSGSIZE;
		goto out;
	}

	for (i = 0; i < mapping->m_sg.dma_npages; ++i)
		ibmr->page_list->page_list[i] = dma_pages[i];

	ret = FUNC4(mapping);
	if (ret)
		goto out;

	FUNC6(s_iw_rdma_mr_used);

out:
	FUNC2(dma_pages);

	return ret;
}