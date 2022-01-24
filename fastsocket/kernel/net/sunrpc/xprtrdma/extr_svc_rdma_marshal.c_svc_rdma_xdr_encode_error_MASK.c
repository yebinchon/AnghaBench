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
typedef  int /*<<< orphan*/  u32 ;
struct svcxprt_rdma {int sc_max_requests; } ;
struct rpcrdma_msg {int rm_xid; int rm_vers; } ;
typedef  enum rpcrdma_errcode { ____Placeholder_rpcrdma_errcode } rpcrdma_errcode ;

/* Variables and functions */
 int ERR_VERS ; 
 int RDMA_ERROR ; 
 int RPCRDMA_VERSION ; 
 void* FUNC0 (int) ; 

int FUNC1(struct svcxprt_rdma *xprt,
			      struct rpcrdma_msg *rmsgp,
			      enum rpcrdma_errcode err, u32 *va)
{
	u32 *startp = va;

	*va++ = FUNC0(rmsgp->rm_xid);
	*va++ = FUNC0(rmsgp->rm_vers);
	*va++ = FUNC0(xprt->sc_max_requests);
	*va++ = FUNC0(RDMA_ERROR);
	*va++ = FUNC0(err);
	if (err == ERR_VERS) {
		*va++ = FUNC0(RPCRDMA_VERSION);
		*va++ = FUNC0(RPCRDMA_VERSION);
	}

	return (int)((unsigned long)va - (unsigned long)startp);
}