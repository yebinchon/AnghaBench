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
struct sockaddr {int sa_family; } ;
struct rpcbind_args {char const* r_netid; int /*<<< orphan*/  r_owner; int /*<<< orphan*/  const r_vers; int /*<<< orphan*/  const r_prog; } ;
struct rpc_message {struct rpcbind_args* rpc_argp; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int EAFNOSUPPORT ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  RPCB_OWNER_STRING ; 
 int /*<<< orphan*/ * rpcb_local_clnt4 ; 
 int FUNC0 (struct sockaddr const*,struct rpc_message*) ; 
 int FUNC1 (struct sockaddr const*,struct rpc_message*) ; 
 int FUNC2 (struct rpc_message*) ; 

int FUNC3(const u32 program, const u32 version,
		     const struct sockaddr *address, const char *netid)
{
	struct rpcbind_args map = {
		.r_prog		= program,
		.r_vers		= version,
		.r_netid	= netid,
		.r_owner	= RPCB_OWNER_STRING,
	};
	struct rpc_message msg = {
		.rpc_argp	= &map,
	};

	if (rpcb_local_clnt4 == NULL)
		return -EPROTONOSUPPORT;

	if (address == NULL)
		return FUNC2(&msg);

	switch (address->sa_family) {
	case AF_INET:
		return FUNC0(address, &msg);
	case AF_INET6:
		return FUNC1(address, &msg);
	}

	return -EAFNOSUPPORT;
}