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
struct svc_rdma_op_ctxt {int count; int /*<<< orphan*/ * pages; struct svcxprt_rdma* xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct svc_rdma_op_ctxt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svc_rdma_ctxt_cachep ; 

void FUNC4(struct svc_rdma_op_ctxt *ctxt, int free_pages)
{
	struct svcxprt_rdma *xprt;
	int i;

	FUNC0(!ctxt);
	xprt = ctxt->xprt;
	if (free_pages)
		for (i = 0; i < ctxt->count; i++)
			FUNC3(ctxt->pages[i]);

	FUNC2(svc_rdma_ctxt_cachep, ctxt);
	FUNC1(&xprt->sc_ctxt_used);
}