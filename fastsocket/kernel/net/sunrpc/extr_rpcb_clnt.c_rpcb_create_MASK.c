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
typedef  int /*<<< orphan*/  u32 ;
struct sockaddr_in6 {void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct sockaddr {int sa_family; } ;
struct rpc_create_args {int protocol; size_t addrsize; char* servername; int flags; int /*<<< orphan*/  authflavor; int /*<<< orphan*/  version; int /*<<< orphan*/ * program; struct sockaddr* address; int /*<<< orphan*/ * net; } ;
struct rpc_clnt {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 struct rpc_clnt* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPCBIND_PORT ; 
 int /*<<< orphan*/  RPC_AUTH_UNIX ; 
 int RPC_CLNT_CREATE_NONPRIVPORT ; 
 int RPC_CLNT_CREATE_NOPING ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 struct rpc_clnt* FUNC2 (struct rpc_create_args*) ; 
 int /*<<< orphan*/  rpcb_program ; 

__attribute__((used)) static struct rpc_clnt *FUNC3(char *hostname, struct sockaddr *srvaddr,
				    size_t salen, int proto, u32 version)
{
	struct rpc_create_args args = {
		.net		= &init_net,
		.protocol	= proto,
		.address	= srvaddr,
		.addrsize	= salen,
		.servername	= hostname,
		.program	= &rpcb_program,
		.version	= version,
		.authflavor	= RPC_AUTH_UNIX,
		.flags		= (RPC_CLNT_CREATE_NOPING |
					RPC_CLNT_CREATE_NONPRIVPORT),
	};

	switch (srvaddr->sa_family) {
	case AF_INET:
		((struct sockaddr_in *)srvaddr)->sin_port = FUNC1(RPCBIND_PORT);
		break;
	case AF_INET6:
		((struct sockaddr_in6 *)srvaddr)->sin6_port = FUNC1(RPCBIND_PORT);
		break;
	default:
		return FUNC0(-EAFNOSUPPORT);
	}

	return FUNC2(&args);
}