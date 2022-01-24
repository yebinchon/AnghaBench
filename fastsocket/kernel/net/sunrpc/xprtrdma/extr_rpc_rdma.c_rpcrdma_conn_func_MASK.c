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
struct rpcrdma_ep {scalar_t__ rep_connected; struct rpc_xprt* rep_xprt; } ;
struct rpc_xprt {scalar_t__ connect_cookie; int /*<<< orphan*/  transport_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_xprt*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct rpcrdma_ep *ep)
{
	struct rpc_xprt *xprt = ep->rep_xprt;

	FUNC0(&xprt->transport_lock);
	if (++xprt->connect_cookie == 0)	/* maintain a reserved value */
		++xprt->connect_cookie;
	if (ep->rep_connected > 0) {
		if (!FUNC3(xprt))
			FUNC4(xprt, 0);
	} else {
		if (FUNC2(xprt))
			FUNC4(xprt, -ENOTCONN);
	}
	FUNC1(&xprt->transport_lock);
}