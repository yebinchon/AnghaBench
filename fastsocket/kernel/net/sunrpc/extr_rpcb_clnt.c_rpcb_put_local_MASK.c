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
struct rpc_clnt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  rpcb_clnt_lock ; 
 struct rpc_clnt* rpcb_local_clnt ; 
 struct rpc_clnt* rpcb_local_clnt4 ; 
 scalar_t__ rpcb_users ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	struct rpc_clnt *clnt = rpcb_local_clnt;
	struct rpc_clnt *clnt4 = rpcb_local_clnt4;
	int shutdown;

	FUNC1(&rpcb_clnt_lock);
	if (--rpcb_users == 0) {
		rpcb_local_clnt = NULL;
		rpcb_local_clnt4 = NULL;
	}
	shutdown = !rpcb_users;
	FUNC2(&rpcb_clnt_lock);

	if (shutdown) {
		/*
		 * cleanup_rpcb_clnt - remove xprtsock's sysctls, unregister
		 */
		if (clnt4)
			FUNC0(clnt4);
		if (clnt)
			FUNC0(clnt);
	}
}