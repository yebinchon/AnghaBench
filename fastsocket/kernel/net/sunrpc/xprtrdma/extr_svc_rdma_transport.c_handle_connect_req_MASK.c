#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  xpt_flags; int /*<<< orphan*/  xpt_server; } ;
struct svcxprt_rdma {size_t sc_ord; TYPE_3__ sc_xprt; int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_accept_q; struct rdma_cm_id* sc_cm_id; } ;
struct sockaddr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  src_addr; int /*<<< orphan*/  dst_addr; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct rdma_cm_id {TYPE_2__ route; struct svcxprt_rdma* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPT_CONN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct svcxprt_rdma* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct sockaddr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct rdma_cm_id *new_cma_id, size_t client_ird)
{
	struct svcxprt_rdma *listen_xprt = new_cma_id->context;
	struct svcxprt_rdma *newxprt;
	struct sockaddr *sa;

	/* Create a new transport */
	newxprt = FUNC2(listen_xprt->sc_xprt.xpt_server, 0);
	if (!newxprt) {
		FUNC0("svcrdma: failed to create new transport\n");
		return;
	}
	newxprt->sc_cm_id = new_cma_id;
	new_cma_id->context = newxprt;
	FUNC0("svcrdma: Creating newxprt=%p, cm_id=%p, listenxprt=%p\n",
		newxprt, newxprt->sc_cm_id, listen_xprt);

	/* Save client advertised inbound read limit for use later in accept. */
	newxprt->sc_ord = client_ird;

	/* Set the local and remote addresses in the transport */
	sa = (struct sockaddr *)&newxprt->sc_cm_id->route.addr.dst_addr;
	FUNC9(&newxprt->sc_xprt, sa, FUNC6(sa));
	sa = (struct sockaddr *)&newxprt->sc_cm_id->route.addr.src_addr;
	FUNC8(&newxprt->sc_xprt, sa, FUNC6(sa));

	/*
	 * Enqueue the new transport on the accept queue of the listening
	 * transport
	 */
	FUNC4(&listen_xprt->sc_lock);
	FUNC1(&newxprt->sc_accept_q, &listen_xprt->sc_accept_q);
	FUNC5(&listen_xprt->sc_lock);

	/*
	 * Can't use svc_xprt_received here because we are not on a
	 * rqstp thread
	*/
	FUNC3(XPT_CONN, &listen_xprt->sc_xprt.xpt_flags);
	FUNC7(&listen_xprt->sc_xprt);
}