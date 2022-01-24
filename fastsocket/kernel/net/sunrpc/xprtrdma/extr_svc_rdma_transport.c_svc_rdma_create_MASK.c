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
struct svc_xprt {int dummy; } ;
struct svcxprt_rdma {struct svc_xprt sc_xprt; struct rdma_cm_id* sc_cm_id; } ;
struct svc_serv {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_3__ {int /*<<< orphan*/  src_addr; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
struct rdma_cm_id {TYPE_2__ route; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int EAFNOSUPPORT ; 
 int ENOMEM ; 
 struct svc_xprt* FUNC0 (int) ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 scalar_t__ FUNC1 (struct rdma_cm_id*) ; 
 int FUNC2 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 int /*<<< orphan*/  RPCRDMA_LISTEN_BACKLOG ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct svcxprt_rdma*) ; 
 int FUNC5 (struct rdma_cm_id*,struct sockaddr*) ; 
 struct rdma_cm_id* FUNC6 (int /*<<< orphan*/ ,struct svcxprt_rdma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct svcxprt_rdma* FUNC7 (struct svc_serv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_cm_id*) ; 
 int FUNC9 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rdma_listen_handler ; 
 int /*<<< orphan*/  FUNC10 (struct svc_xprt*,struct sockaddr*,int) ; 

__attribute__((used)) static struct svc_xprt *FUNC11(struct svc_serv *serv,
					struct net *net,
					struct sockaddr *sa, int salen,
					int flags)
{
	struct rdma_cm_id *listen_id;
	struct svcxprt_rdma *cma_xprt;
	struct svc_xprt *xprt;
	int ret;

	FUNC3("svcrdma: Creating RDMA socket\n");
	if (sa->sa_family != AF_INET) {
		FUNC3("svcrdma: Address family %d is not supported.\n", sa->sa_family);
		return FUNC0(-EAFNOSUPPORT);
	}
	cma_xprt = FUNC7(serv, 1);
	if (!cma_xprt)
		return FUNC0(-ENOMEM);
	xprt = &cma_xprt->sc_xprt;

	listen_id = FUNC6(rdma_listen_handler, cma_xprt, RDMA_PS_TCP,
				   IB_QPT_RC);
	if (FUNC1(listen_id)) {
		ret = FUNC2(listen_id);
		FUNC3("svcrdma: rdma_create_id failed = %d\n", ret);
		goto err0;
	}

	ret = FUNC5(listen_id, sa);
	if (ret) {
		FUNC3("svcrdma: rdma_bind_addr failed = %d\n", ret);
		goto err1;
	}
	cma_xprt->sc_cm_id = listen_id;

	ret = FUNC9(listen_id, RPCRDMA_LISTEN_BACKLOG);
	if (ret) {
		FUNC3("svcrdma: rdma_listen failed = %d\n", ret);
		goto err1;
	}

	/*
	 * We need to use the address from the cm_id in case the
	 * caller specified 0 for the port number.
	 */
	sa = (struct sockaddr *)&cma_xprt->sc_cm_id->route.addr.src_addr;
	FUNC10(&cma_xprt->sc_xprt, sa, salen);

	return &cma_xprt->sc_xprt;

 err1:
	FUNC8(listen_id);
 err0:
	FUNC4(cma_xprt);
	return FUNC0(ret);
}