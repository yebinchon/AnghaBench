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
typedef  int uint32_t ;
struct rr_server {int /*<<< orphan*/  cid; int /*<<< orphan*/  pid; } ;
struct msm_rpc_endpoint {unsigned int flags; void* dst_vers; void* dst_prog; int /*<<< orphan*/  dst_cid; int /*<<< orphan*/  dst_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  EHOSTUNREACH ; 
 struct msm_rpc_endpoint* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct msm_rpc_endpoint*) ; 
 int RPC_VERSION_MODE_MASK ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int,int*) ; 
 struct msm_rpc_endpoint* FUNC5 () ; 
 struct rr_server* FUNC6 (int,int) ; 

struct msm_rpc_endpoint *FUNC7(uint32_t prog, uint32_t vers, unsigned flags)
{
	struct msm_rpc_endpoint *ept;
	struct rr_server *server;

#if CONFIG_MSM_AMSS_VERSION >= 6350
	if (!(vers & RPC_VERSION_MODE_MASK)) {
		uint32_t found_vers;
		if (msm_rpc_get_compatible_server(prog, vers, &found_vers) < 0)
			return ERR_PTR(-EHOSTUNREACH);
		if (found_vers != vers) {
			D("RPC using new version %08x:{%08x --> %08x}\n",
			 	prog, vers, found_vers);
			vers = found_vers;
		}
	}
#endif

	server = FUNC6(prog, vers);
	if (!server)
		return FUNC1(-EHOSTUNREACH);

	ept = FUNC5();
	if (FUNC2(ept))
		return ept;

	ept->flags = flags;
	ept->dst_pid = server->pid;
	ept->dst_cid = server->cid;
	ept->dst_prog = FUNC3(prog);
	ept->dst_vers = FUNC3(vers);

	return ept;
}