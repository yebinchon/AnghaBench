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
struct rpc_message {int* rpc_resp; } ;
struct rpc_clnt {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  RPC_TASK_SOFTCONN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct rpc_clnt*,struct rpc_message*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rpc_clnt *clnt, struct rpc_message *msg)
{
	int result, error = 0;

	msg->rpc_resp = &result;

	error = FUNC1(clnt, msg, RPC_TASK_SOFTCONN);
	if (error < 0) {
		FUNC0("RPC:       failed to contact local rpcbind "
				"server (errno %d).\n", -error);
		return error;
	}

	if (!result)
		return -EACCES;
	return 0;
}