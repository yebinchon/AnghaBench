#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct rpc_clnt {scalar_t__ cl_server; scalar_t__ cl_inline_name; int /*<<< orphan*/  cl_xprt; int /*<<< orphan*/ * cl_metrics; struct rpc_clnt* cl_principal; struct rpc_clnt* cl_parent; TYPE_1__ cl_path; int /*<<< orphan*/  cl_protname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct rpc_clnt *clnt)
{
	FUNC1("RPC:       destroying %s client for %s\n",
			clnt->cl_protname, clnt->cl_server);
	if (!FUNC0(clnt->cl_path.dentry)) {
		FUNC6(clnt->cl_path.dentry);
		FUNC4();
	}
	if (clnt->cl_parent != clnt) {
		FUNC5(clnt->cl_parent);
		goto out_free;
	}
	if (clnt->cl_server != clnt->cl_inline_name)
		FUNC2(clnt->cl_server);
out_free:
	FUNC7(clnt);
	FUNC3(clnt->cl_metrics);
	FUNC2(clnt->cl_principal);
	clnt->cl_metrics = NULL;
	FUNC9(clnt->cl_xprt);
	FUNC8();
	FUNC2(clnt);
}