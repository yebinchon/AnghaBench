#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  xpt_flags; } ;
struct svcxprt_rdma {scalar_t__ sc_sq_depth; int /*<<< orphan*/  sc_send_wait; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_sq_count; TYPE_1__ sc_xprt; int /*<<< orphan*/  sc_qp; } ;
struct ib_send_wr {scalar_t__ send_flags; struct ib_send_wr* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOTCONN ; 
 scalar_t__ IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  XPT_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ib_send_wr*,struct ib_send_wr**) ; 
 int /*<<< orphan*/  rdma_stat_sq_starve ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct svcxprt_rdma*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct svcxprt_rdma *xprt, struct ib_send_wr *wr)
{
	struct ib_send_wr *bad_wr, *n_wr;
	int wr_count;
	int i;
	int ret;

	if (FUNC13(XPT_CLOSE, &xprt->sc_xprt.xpt_flags))
		return -ENOTCONN;

	FUNC0(wr->send_flags != IB_SEND_SIGNALED);
	wr_count = 1;
	for (n_wr = wr->next; n_wr; n_wr = n_wr->next)
		wr_count++;

	/* If the SQ is full, wait until an SQ entry is available */
	while (1) {
		FUNC8(&xprt->sc_lock);
		if (xprt->sc_sq_depth < FUNC3(&xprt->sc_sq_count) + wr_count) {
			FUNC9(&xprt->sc_lock);
			FUNC2(&rdma_stat_sq_starve);

			/* See if we can opportunistically reap SQ WR to make room */
			FUNC10(xprt);

			/* Wait until SQ WR available if SQ still full */
			FUNC14(xprt->sc_send_wait,
				   FUNC3(&xprt->sc_sq_count) <
				   xprt->sc_sq_depth);
			if (FUNC13(XPT_CLOSE, &xprt->sc_xprt.xpt_flags))
				return -ENOTCONN;
			continue;
		}
		/* Take a transport ref for each WR posted */
		for (i = 0; i < wr_count; i++)
			FUNC11(&xprt->sc_xprt);

		/* Bump used SQ WR count and post */
		FUNC1(wr_count, &xprt->sc_sq_count);
		ret = FUNC6(xprt->sc_qp, wr, &bad_wr);
		if (ret) {
			FUNC7(XPT_CLOSE, &xprt->sc_xprt.xpt_flags);
			FUNC4(wr_count, &xprt->sc_sq_count);
			for (i = 0; i < wr_count; i ++)
				FUNC12(&xprt->sc_xprt);
			FUNC5("svcrdma: failed to post SQ WR rc=%d, "
			       "sc_sq_count=%d, sc_sq_depth=%d\n",
			       ret, FUNC3(&xprt->sc_sq_count),
			       xprt->sc_sq_depth);
		}
		FUNC9(&xprt->sc_lock);
		if (ret)
			FUNC15(&xprt->sc_send_wait);
		break;
	}
	return ret;
}