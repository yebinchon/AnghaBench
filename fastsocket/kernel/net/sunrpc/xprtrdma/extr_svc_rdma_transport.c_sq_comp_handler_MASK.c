#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {TYPE_1__ xpt_ref; } ;
struct svcxprt_rdma {int /*<<< orphan*/  sc_dto_q; TYPE_2__ sc_xprt; int /*<<< orphan*/  sc_flags; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMAXPRT_SQ_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dto_lock ; 
 int /*<<< orphan*/  dto_tasklet ; 
 int /*<<< orphan*/  dto_xprt_q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ib_cq *cq, void *cq_context)
{
	struct svcxprt_rdma *xprt = cq_context;
	unsigned long flags;

	/* Guard against unconditional flush call for destroyed QP */
	if (FUNC0(&xprt->sc_xprt.xpt_ref.refcount)==0)
		return;

	/*
	 * Set the bit regardless of whether or not it's on the list
	 * because it may be on the list already due to an RQ
	 * completion.
	 */
	FUNC3(RDMAXPRT_SQ_PENDING, &xprt->sc_flags);

	/*
	 * If this transport is not already on the DTO transport queue,
	 * add it
	 */
	FUNC4(&dto_lock, flags);
	if (FUNC2(&xprt->sc_dto_q)) {
		FUNC6(&xprt->sc_xprt);
		FUNC1(&xprt->sc_dto_q, &dto_xprt_q);
	}
	FUNC5(&dto_lock, flags);

	/* Tasklet does all the work to avoid irqsave locks. */
	FUNC7(&dto_tasklet);
}