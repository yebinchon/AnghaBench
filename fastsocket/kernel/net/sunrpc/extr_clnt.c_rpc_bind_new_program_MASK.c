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
typedef  size_t u32 ;
struct rpc_version {int /*<<< orphan*/  number; int /*<<< orphan*/  nrprocs; int /*<<< orphan*/  procs; } ;
struct rpc_program {size_t nrvers; int /*<<< orphan*/  stats; int /*<<< orphan*/  number; int /*<<< orphan*/  name; struct rpc_version** version; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_stats; int /*<<< orphan*/  cl_vers; int /*<<< orphan*/  cl_prog; int /*<<< orphan*/  cl_protname; int /*<<< orphan*/  cl_maxproc; int /*<<< orphan*/  cl_procinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rpc_clnt* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct rpc_clnt*) ; 
 struct rpc_clnt* FUNC3 (struct rpc_clnt*) ; 
 int FUNC4 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_clnt*) ; 

struct rpc_clnt *FUNC6(struct rpc_clnt *old,
				      struct rpc_program *program,
				      u32 vers)
{
	struct rpc_clnt *clnt;
	struct rpc_version *version;
	int err;

	FUNC0(vers >= program->nrvers || !program->version[vers]);
	version = program->version[vers];
	clnt = FUNC3(old);
	if (FUNC2(clnt))
		goto out;
	clnt->cl_procinfo = version->procs;
	clnt->cl_maxproc  = version->nrprocs;
	clnt->cl_protname = program->name;
	clnt->cl_prog     = program->number;
	clnt->cl_vers     = version->number;
	clnt->cl_stats    = program->stats;
	err = FUNC4(clnt);
	if (err != 0) {
		FUNC5(clnt);
		clnt = FUNC1(err);
	}
out:
	return clnt;
}