#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xprt_create {int /*<<< orphan*/  bc_xprt; int /*<<< orphan*/  addrlen; TYPE_1__* dstaddr; int /*<<< orphan*/  srcaddr; int /*<<< orphan*/  ident; int /*<<< orphan*/  net; } ;
struct sockaddr_un {char* sun_path; } ;
struct sockaddr_in6 {char sin6_addr; } ;
struct TYPE_4__ {char s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct rpc_xprt {int resvport; int cl_softrtry; int cl_autobind; int cl_discrtry; int cl_chatty; } ;
struct rpc_create_args {char* servername; int flags; TYPE_1__* address; int /*<<< orphan*/  bc_xprt; int /*<<< orphan*/  addrsize; int /*<<< orphan*/  saddress; int /*<<< orphan*/  protocol; int /*<<< orphan*/  net; } ;
struct rpc_clnt {int resvport; int cl_softrtry; int cl_autobind; int cl_discrtry; int cl_chatty; } ;
typedef  int /*<<< orphan*/  servername ;
struct TYPE_3__ {int sa_family; } ;

/* Variables and functions */
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_LOCAL 128 
 int EINVAL ; 
 struct rpc_xprt* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rpc_xprt*) ; 
 int RPC_CLNT_CREATE_AUTOBIND ; 
 int RPC_CLNT_CREATE_DISCRTRY ; 
 int RPC_CLNT_CREATE_HARDRTRY ; 
 int RPC_CLNT_CREATE_NONPRIVPORT ; 
 int RPC_CLNT_CREATE_NOPING ; 
 int RPC_CLNT_CREATE_QUIET ; 
 struct rpc_xprt* FUNC2 (struct rpc_create_args*,struct rpc_xprt*) ; 
 int FUNC3 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 struct rpc_xprt* FUNC6 (struct xprt_create*) ; 

struct rpc_clnt *FUNC7(struct rpc_create_args *args)
{
	struct rpc_xprt *xprt;
	struct rpc_clnt *clnt;
	struct xprt_create xprtargs = {
		.net = args->net,
		.ident = args->protocol,
		.srcaddr = args->saddress,
		.dstaddr = args->address,
		.addrlen = args->addrsize,
		.bc_xprt = args->bc_xprt,
	};
	char servername[48];

	/*
	 * If the caller chooses not to specify a hostname, whip
	 * up a string representation of the passed-in address.
	 */
	if (args->servername == NULL) {
		struct sockaddr_un *sun =
				(struct sockaddr_un *)args->address;
		struct sockaddr_in *sin =
				(struct sockaddr_in *)args->address;
		struct sockaddr_in6 *sin6 =
				(struct sockaddr_in6 *)args->address;

		servername[0] = '\0';
		switch (args->address->sa_family) {
		case AF_LOCAL:
			FUNC5(servername, sizeof(servername), "%s",
				 sun->sun_path);
			break;
		case AF_INET:
			FUNC5(servername, sizeof(servername), "%pI4",
				 &sin->sin_addr.s_addr);
			break;
		case AF_INET6: 
			FUNC5(servername, sizeof(servername), "%pI6",
				 &sin6->sin6_addr);
			break;
		default:
			/* caller wants default server name, but
			 * address family isn't recognized. */
			return FUNC0(-EINVAL);
		}
		args->servername = servername;
	}

	xprt = FUNC6(&xprtargs);
	if (FUNC1(xprt))
		return (struct rpc_clnt *)xprt;

	/*
	 * By default, kernel RPC client connects from a reserved port.
	 * CAP_NET_BIND_SERVICE will not be set for unprivileged requesters,
	 * but it is always enabled for rpciod, which handles the connect
	 * operation.
	 */
	xprt->resvport = 1;
	if (args->flags & RPC_CLNT_CREATE_NONPRIVPORT)
		xprt->resvport = 0;

	clnt = FUNC2(args, xprt);
	if (FUNC1(clnt))
		return clnt;

	if (!(args->flags & RPC_CLNT_CREATE_NOPING)) {
		int err = FUNC3(clnt);
		if (err != 0) {
			FUNC4(clnt);
			return FUNC0(err);
		}
	}

	clnt->cl_softrtry = 1;
	if (args->flags & RPC_CLNT_CREATE_HARDRTRY)
		clnt->cl_softrtry = 0;

	if (args->flags & RPC_CLNT_CREATE_AUTOBIND)
		clnt->cl_autobind = 1;
	if (args->flags & RPC_CLNT_CREATE_DISCRTRY)
		clnt->cl_discrtry = 1;
	if (!(args->flags & RPC_CLNT_CREATE_QUIET))
		clnt->cl_chatty = 1;

	return clnt;
}