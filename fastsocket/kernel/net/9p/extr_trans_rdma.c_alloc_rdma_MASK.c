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
struct p9_trans_rdma {int /*<<< orphan*/  rq_count; int /*<<< orphan*/  sq_depth; int /*<<< orphan*/  sq_sem; int /*<<< orphan*/  cm_done; int /*<<< orphan*/  req_lock; int /*<<< orphan*/  timeout; int /*<<< orphan*/  rq_depth; } ;
struct p9_rdma_opts {int /*<<< orphan*/  timeout; int /*<<< orphan*/  rq_depth; int /*<<< orphan*/  sq_depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct p9_trans_rdma* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct p9_trans_rdma *FUNC5(struct p9_rdma_opts *opts)
{
	struct p9_trans_rdma *rdma;

	rdma = FUNC2(sizeof(struct p9_trans_rdma), GFP_KERNEL);
	if (!rdma)
		return NULL;

	rdma->sq_depth = opts->sq_depth;
	rdma->rq_depth = opts->rq_depth;
	rdma->timeout = opts->timeout;
	FUNC4(&rdma->req_lock);
	FUNC1(&rdma->cm_done);
	FUNC3(&rdma->sq_sem, rdma->sq_depth);
	FUNC0(&rdma->rq_count, 0);

	return rdma;
}