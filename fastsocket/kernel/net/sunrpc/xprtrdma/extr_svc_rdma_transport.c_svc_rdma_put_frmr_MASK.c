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
struct svcxprt_rdma {int /*<<< orphan*/  sc_frmr_q_lock; int /*<<< orphan*/  sc_frmr_q; } ;
struct svc_rdma_fastreg_mr {int /*<<< orphan*/  frmr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct svcxprt_rdma*,struct svc_rdma_fastreg_mr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct svcxprt_rdma *rdma,
		       struct svc_rdma_fastreg_mr *frmr)
{
	if (frmr) {
		FUNC1(rdma, frmr);
		FUNC4(&rdma->sc_frmr_q_lock);
		FUNC0(!FUNC3(&frmr->frmr_list));
		FUNC2(&frmr->frmr_list, &rdma->sc_frmr_q);
		FUNC5(&rdma->sc_frmr_q_lock);
	}
}