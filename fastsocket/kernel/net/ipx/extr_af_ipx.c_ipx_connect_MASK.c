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
struct socket {scalar_t__ type; int /*<<< orphan*/  state; struct sock* sk; } ;
struct sockaddr_ipx {int /*<<< orphan*/  sipx_type; int /*<<< orphan*/  sipx_node; scalar_t__ sipx_port; scalar_t__ sipx_network; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  node; scalar_t__ sock; scalar_t__ net; } ;
struct ipx_sock {int /*<<< orphan*/  type; TYPE_2__ dest_addr; TYPE_1__* intrfc; int /*<<< orphan*/  port; } ;
struct ipx_route {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int ENETUNREACH ; 
 int /*<<< orphan*/  IPX_NODE_LEN ; 
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  SS_UNCONNECTED ; 
 int /*<<< orphan*/  TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_ESTABLISHED ; 
 int FUNC0 (struct socket*,struct sockaddr*,int) ; 
 scalar_t__ ipx_primary_net ; 
 struct ipx_sock* FUNC1 (struct sock*) ; 
 struct ipx_route* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipx_route*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, struct sockaddr *uaddr,
	int addr_len, int flags)
{
	struct sock *sk = sock->sk;
	struct ipx_sock *ipxs = FUNC1(sk);
	struct sockaddr_ipx *addr;
	int rc = -EINVAL;
	struct ipx_route *rt;

	sk->sk_state	= TCP_CLOSE;
	sock->state 	= SS_UNCONNECTED;

	if (addr_len != sizeof(*addr))
		goto out;
	addr = (struct sockaddr_ipx *)uaddr;

	/* put the autobinding in */
	if (!ipxs->port) {
		struct sockaddr_ipx uaddr;

		uaddr.sipx_port		= 0;
		uaddr.sipx_network 	= 0;

#ifdef CONFIG_IPX_INTERN
		rc = -ENETDOWN;
		if (!ipxs->intrfc)
			goto out; /* Someone zonked the iface */
		memcpy(uaddr.sipx_node, ipxs->intrfc->if_node,
			IPX_NODE_LEN);
#endif	/* CONFIG_IPX_INTERN */

		rc = FUNC0(sock, (struct sockaddr *)&uaddr,
			      sizeof(struct sockaddr_ipx));
		if (rc)
			goto out;
	}

	/* We can either connect to primary network or somewhere
	 * we can route to */
	rt = FUNC2(addr->sipx_network);
	rc = -ENETUNREACH;
	if (!rt && !(!addr->sipx_network && ipx_primary_net))
		goto out;

	ipxs->dest_addr.net  = addr->sipx_network;
	ipxs->dest_addr.sock = addr->sipx_port;
	FUNC4(ipxs->dest_addr.node, addr->sipx_node, IPX_NODE_LEN);
	ipxs->type = addr->sipx_type;

	if (sock->type == SOCK_DGRAM) {
		sock->state 	= SS_CONNECTED;
		sk->sk_state 	= TCP_ESTABLISHED;
	}

	if (rt)
		FUNC3(rt);
	rc = 0;
out:
	return rc;
}