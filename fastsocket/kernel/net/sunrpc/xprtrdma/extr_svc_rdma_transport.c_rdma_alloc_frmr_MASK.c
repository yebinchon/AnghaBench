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
struct svcxprt_rdma {TYPE_1__* sc_cm_id; int /*<<< orphan*/  sc_pd; } ;
struct svc_rdma_fastreg_mr {int /*<<< orphan*/  frmr_list; struct ib_mr* page_list; struct ib_mr* mr; } ;
struct ib_mr {int dummy; } ;
typedef  struct ib_mr ib_fast_reg_page_list ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct svc_rdma_fastreg_mr* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ib_mr*) ; 
 int /*<<< orphan*/  RPCSVC_MAXPAGES ; 
 struct ib_mr* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_mr* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_rdma_fastreg_mr*) ; 
 struct svc_rdma_fastreg_mr* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct svc_rdma_fastreg_mr *FUNC8(struct svcxprt_rdma *xprt)
{
	struct ib_mr *mr;
	struct ib_fast_reg_page_list *pl;
	struct svc_rdma_fastreg_mr *frmr;

	frmr = FUNC7(sizeof(*frmr), GFP_KERNEL);
	if (!frmr)
		goto err;

	mr = FUNC3(xprt->sc_pd, RPCSVC_MAXPAGES);
	if (FUNC2(mr))
		goto err_free_frmr;

	pl = FUNC4(xprt->sc_cm_id->device,
					 RPCSVC_MAXPAGES);
	if (FUNC2(pl))
		goto err_free_mr;

	frmr->mr = mr;
	frmr->page_list = pl;
	FUNC1(&frmr->frmr_list);
	return frmr;

 err_free_mr:
	FUNC5(mr);
 err_free_frmr:
	FUNC6(frmr);
 err:
	return FUNC0(-ENOMEM);
}