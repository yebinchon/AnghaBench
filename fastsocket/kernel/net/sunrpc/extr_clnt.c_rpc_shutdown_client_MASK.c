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
struct rpc_clnt {int /*<<< orphan*/  cl_tasks; int /*<<< orphan*/  cl_server; int /*<<< orphan*/  cl_protname; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  destroy_wait ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct rpc_clnt *clnt)
{
	FUNC0("RPC:       shutting down %s client for %s\n",
			clnt->cl_protname, clnt->cl_server);

	while (!FUNC1(&clnt->cl_tasks)) {
		FUNC2(clnt);
		FUNC4(destroy_wait,
			FUNC1(&clnt->cl_tasks), 1*HZ);
	}

	FUNC3(clnt);
}