#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {int /*<<< orphan*/  sk; } ;
struct TYPE_8__ {scalar_t__ family; } ;
struct sockaddr_rxrpc {scalar_t__ transport_type; TYPE_4__ transport; } ;
struct sockaddr {int dummy; } ;
struct rxrpc_transport {int dummy; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_7__ {scalar_t__ transport_type; TYPE_2__ transport; } ;
struct TYPE_5__ {scalar_t__ sk_state; } ;
struct rxrpc_sock {int /*<<< orphan*/ * local; TYPE_3__ srx; TYPE_1__ sk; } ;
struct rxrpc_peer {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 struct rxrpc_transport* FUNC1 (struct rxrpc_peer*) ; 
 struct rxrpc_transport* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESOCKTNOSUPPORT ; 
 scalar_t__ FUNC3 (struct rxrpc_peer*) ; 
 scalar_t__ RXRPC_UNCONNECTED ; 
 int /*<<< orphan*/  FUNC4 (char*,struct rxrpc_sock*,struct sockaddr*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct rxrpc_transport*) ; 
 struct rxrpc_peer* FUNC6 (struct sockaddr_rxrpc*,int /*<<< orphan*/ ) ; 
 struct rxrpc_transport* FUNC7 (int /*<<< orphan*/ *,struct rxrpc_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_peer*) ; 
 struct rxrpc_sock* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rxrpc_transport *FUNC10(struct socket *sock,
						       struct sockaddr *addr,
						       int addr_len, int flags,
						       gfp_t gfp)
{
	struct sockaddr_rxrpc *srx = (struct sockaddr_rxrpc *) addr;
	struct rxrpc_transport *trans;
	struct rxrpc_sock *rx = FUNC9(sock->sk);
	struct rxrpc_peer *peer;

	FUNC4("%p,%p,%d,%d", rx, addr, addr_len, flags);

	FUNC0(rx->local != NULL);
	FUNC0(rx->sk.sk_state > RXRPC_UNCONNECTED);

	if (rx->srx.transport_type != srx->transport_type)
		return FUNC2(-ESOCKTNOSUPPORT);
	if (rx->srx.transport.family != srx->transport.family)
		return FUNC2(-EAFNOSUPPORT);

	/* find a remote transport endpoint from the local one */
	peer = FUNC6(srx, gfp);
	if (FUNC3(peer))
		return FUNC1(peer);

	/* find a transport */
	trans = FUNC7(rx->local, peer, gfp);
	FUNC8(peer);
	FUNC5(" = %p", trans);
	return trans;
}