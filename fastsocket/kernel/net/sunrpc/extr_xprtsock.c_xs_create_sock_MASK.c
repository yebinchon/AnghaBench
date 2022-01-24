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
struct socket {int dummy; } ;
struct sock_xprt {int dummy; } ;
struct rpc_xprt {int /*<<< orphan*/  xprt_net; } ;

/* Variables and functions */
 struct socket* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,struct socket**,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int FUNC4 (struct sock_xprt*,struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct socket*) ; 

__attribute__((used)) static struct socket *FUNC6(struct rpc_xprt *xprt,
		struct sock_xprt *transport, int family, int type, int protocol)
{
	struct socket *sock;
	int err;

	err = FUNC1(xprt->xprt_net, family, type, protocol, &sock, 1);
	if (err < 0) {
		FUNC2("RPC:       can't create %d transport socket (%d).\n",
				protocol, -err);
		goto out;
	}
	FUNC5(family, sock);

	err = FUNC4(transport, sock);
	if (err) {
		FUNC3(sock);
		goto out;
	}

	return sock;
out:
	return FUNC0(err);
}