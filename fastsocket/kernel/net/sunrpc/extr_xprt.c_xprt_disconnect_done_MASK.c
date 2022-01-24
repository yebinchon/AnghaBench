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
struct rpc_xprt {int /*<<< orphan*/  transport_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_xprt*,int /*<<< orphan*/ ) ; 

void FUNC5(struct rpc_xprt *xprt)
{
	FUNC0("RPC:       disconnected transport %p\n", xprt);
	FUNC1(&xprt->transport_lock);
	FUNC3(xprt);
	FUNC4(xprt, -EAGAIN);
	FUNC2(&xprt->transport_lock);
}