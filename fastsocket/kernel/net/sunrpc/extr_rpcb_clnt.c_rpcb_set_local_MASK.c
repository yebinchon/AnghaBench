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
 int /*<<< orphan*/  FUNC0 (char*,struct rpc_clnt*,struct rpc_clnt*) ; 
 struct rpc_clnt* rpcb_local_clnt ; 
 struct rpc_clnt* rpcb_local_clnt4 ; 
 int rpcb_users ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct rpc_clnt *clnt, struct rpc_clnt *clnt4)
{
	/* Protected by rpcb_create_local_mutex */
	rpcb_local_clnt = clnt;
	rpcb_local_clnt4 = clnt4;
	FUNC1(); 
	rpcb_users = 1;
	FUNC0("RPC:       created new rpcb local clients (rpcb_local_clnt: "
			"%p, rpcb_local_clnt4: %p)\n", rpcb_local_clnt,
			rpcb_local_clnt4);
}