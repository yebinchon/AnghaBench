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
struct seq_file {struct rpc_clnt* private; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_vers; int /*<<< orphan*/  cl_prog; int /*<<< orphan*/  cl_protname; int /*<<< orphan*/  cl_server; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_DISPLAY_ADDR ; 
 int /*<<< orphan*/  RPC_DISPLAY_PORT ; 
 int /*<<< orphan*/  RPC_DISPLAY_PROTO ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_clnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC2(struct seq_file *m, void *v)
{
	struct rpc_clnt *clnt = m->private;

	FUNC1(m, "RPC server: %s\n", clnt->cl_server);
	FUNC1(m, "service: %s (%d) version %d\n", clnt->cl_protname,
			clnt->cl_prog, clnt->cl_vers);
	FUNC1(m, "address: %s\n", FUNC0(clnt, RPC_DISPLAY_ADDR));
	FUNC1(m, "protocol: %s\n", FUNC0(clnt, RPC_DISPLAY_PROTO));
	FUNC1(m, "port: %s\n", FUNC0(clnt, RPC_DISPLAY_PORT));
	return 0;
}