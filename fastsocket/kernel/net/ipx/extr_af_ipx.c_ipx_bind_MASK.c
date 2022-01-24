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
struct socket {struct sock* sk; } ;
struct sockaddr_ipx {int sipx_port; int /*<<< orphan*/  sipx_node; int /*<<< orphan*/  sipx_network; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct ipx_sock {int port; int /*<<< orphan*/  node; } ;
struct ipx_interface {int /*<<< orphan*/  if_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EACCES ; 
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 scalar_t__ IPX_MIN_EPHEMERAL_SOCKET ; 
 int /*<<< orphan*/  IPX_NODE_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,char*,scalar_t__) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipx_broadcast_node ; 
 int FUNC2 (struct ipx_interface*) ; 
 struct ipx_interface* ipx_internal_net ; 
 struct ipx_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  ipx_this_node ; 
 scalar_t__ FUNC4 (struct ipx_interface*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct ipx_interface*,int) ; 
 struct ipx_interface* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ipx_interface*,struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
	struct sock *sk = sock->sk;
	struct ipx_sock *ipxs = FUNC3(sk);
	struct ipx_interface *intrfc;
	struct sockaddr_ipx *addr = (struct sockaddr_ipx *)uaddr;
	int rc = -EINVAL;

	if (!FUNC12(sk, SOCK_ZAPPED) || addr_len != sizeof(struct sockaddr_ipx))
		goto out;

	intrfc = FUNC6(addr->sipx_network);
	rc = -EADDRNOTAVAIL;
	if (!intrfc)
		goto out;

	if (!addr->sipx_port) {
		addr->sipx_port = FUNC2(intrfc);
		rc = -EINVAL;
		if (!addr->sipx_port)
			goto out_put;
	}

	/* protect IPX system stuff like routing/sap */
	rc = -EACCES;
	if (FUNC11(addr->sipx_port) < IPX_MIN_EPHEMERAL_SOCKET &&
	    !FUNC1(CAP_NET_ADMIN))
		goto out_put;

	ipxs->port = addr->sipx_port;

#ifdef CONFIG_IPX_INTERN
	if (intrfc == ipx_internal_net) {
		/* The source address is to be set explicitly if the
		 * socket is to be bound on the internal network. If a
		 * node number 0 was specified, the default is used.
		 */

		rc = -EINVAL;
		if (!memcmp(addr->sipx_node, ipx_broadcast_node, IPX_NODE_LEN))
			goto out_put;
		if (!memcmp(addr->sipx_node, ipx_this_node, IPX_NODE_LEN))
			memcpy(ipxs->node, intrfc->if_node, IPX_NODE_LEN);
		else
			memcpy(ipxs->node, addr->sipx_node, IPX_NODE_LEN);

		rc = -EADDRINUSE;
		if (ipxitf_find_internal_socket(intrfc, ipxs->node,
						ipxs->port)) {
			SOCK_DEBUG(sk,
				"IPX: bind failed because port %X in use.\n",
				ntohs(addr->sipx_port));
			goto out_put;
		}
	} else {
		/* Source addresses are easy. It must be our
		 * network:node pair for an interface routed to IPX
		 * with the ipx routing ioctl()
		 */

		memcpy(ipxs->node, intrfc->if_node, IPX_NODE_LEN);

		rc = -EADDRINUSE;
		if (ipxitf_find_socket(intrfc, addr->sipx_port)) {
			SOCK_DEBUG(sk,
				"IPX: bind failed because port %X in use.\n",
				ntohs(addr->sipx_port));
			goto out_put;
		}
	}

#else	/* !def CONFIG_IPX_INTERN */

	/* Source addresses are easy. It must be our network:node pair for
	   an interface routed to IPX with the ipx routing ioctl() */

	rc = -EADDRINUSE;
	if (FUNC5(intrfc, addr->sipx_port)) {
		FUNC0(sk, "IPX: bind failed because port %X in use.\n",
				FUNC11((int)addr->sipx_port));
		goto out_put;
	}

#endif	/* CONFIG_IPX_INTERN */

	FUNC7(intrfc, sk);
	FUNC13(sk, SOCK_ZAPPED);

	rc = 0;
out_put:
	FUNC8(intrfc);
out:
	return rc;
}