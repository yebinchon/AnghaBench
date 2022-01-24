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
struct rpcrdma_ia {int ri_memreg_strategy; } ;
struct rpcrdma_xprt {struct rpcrdma_ia rx_ia; } ;
struct rpcrdma_rep {void (* rr_func ) (struct rpcrdma_rep*) ;} ;
struct rpcrdma_mr_seg {int mr_nsegs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  RPCRDMA_ALLPHYSICAL 132 
#define  RPCRDMA_FRMR 131 
#define  RPCRDMA_MEMWINDOWS 130 
#define  RPCRDMA_MEMWINDOWS_ASYNC 129 
#define  RPCRDMA_MTHCAFMR 128 
 int FUNC1 (struct rpcrdma_mr_seg*,struct rpcrdma_ia*) ; 
 int FUNC2 (struct rpcrdma_mr_seg*,struct rpcrdma_ia*) ; 
 int FUNC3 (struct rpcrdma_mr_seg*,struct rpcrdma_ia*,struct rpcrdma_xprt*) ; 
 int FUNC4 (struct rpcrdma_mr_seg*,struct rpcrdma_ia*,struct rpcrdma_xprt*,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct rpcrdma_ia*,struct rpcrdma_mr_seg*) ; 

int
FUNC6(struct rpcrdma_mr_seg *seg,
		struct rpcrdma_xprt *r_xprt, void *r)
{
	struct rpcrdma_ia *ia = &r_xprt->rx_ia;
	int nsegs = seg->mr_nsegs, rc;

	switch (ia->ri_memreg_strategy) {

#if RPCRDMA_PERSISTENT_REGISTRATION
	case RPCRDMA_ALLPHYSICAL:
		BUG_ON(nsegs != 1);
		rpcrdma_unmap_one(ia, seg);
		rc = 0;
		break;
#endif

	case RPCRDMA_FRMR:
		rc = FUNC3(seg, ia, r_xprt);
		break;

	case RPCRDMA_MTHCAFMR:
		rc = FUNC2(seg, ia);
		break;

	case RPCRDMA_MEMWINDOWS_ASYNC:
	case RPCRDMA_MEMWINDOWS:
		rc = FUNC4(seg, ia, r_xprt, &r);
		break;

	default:
		rc = FUNC1(seg, ia);
		break;
	}
	if (r) {
		struct rpcrdma_rep *rep = r;
		void (*func)(struct rpcrdma_rep *) = rep->rr_func;
		rep->rr_func = NULL;
		func(rep);	/* dereg done, callback now */
	}
	return nsegs;
}