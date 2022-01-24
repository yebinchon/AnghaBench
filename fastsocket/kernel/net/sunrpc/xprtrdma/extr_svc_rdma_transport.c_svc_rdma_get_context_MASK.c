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
struct svcxprt_rdma {int /*<<< orphan*/  sc_ctxt_used; } ;
struct svc_rdma_op_ctxt {int /*<<< orphan*/ * frmr; scalar_t__ count; int /*<<< orphan*/  dto_q; struct svcxprt_rdma* xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct svc_rdma_op_ctxt* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svc_rdma_ctxt_cachep ; 

struct svc_rdma_op_ctxt *FUNC5(struct svcxprt_rdma *xprt)
{
	struct svc_rdma_op_ctxt *ctxt;

	while (1) {
		ctxt = FUNC2(svc_rdma_ctxt_cachep, GFP_KERNEL);
		if (ctxt)
			break;
		FUNC4(FUNC3(500));
	}
	ctxt->xprt = xprt;
	FUNC0(&ctxt->dto_q);
	ctxt->count = 0;
	ctxt->frmr = NULL;
	FUNC1(&xprt->sc_ctxt_used);
	return ctxt;
}