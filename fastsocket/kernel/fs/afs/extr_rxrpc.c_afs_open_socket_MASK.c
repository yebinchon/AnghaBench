#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_1__* sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct TYPE_6__ {TYPE_2__ sin; } ;
struct sockaddr_rxrpc {int transport_len; TYPE_3__ transport; int /*<<< orphan*/  transport_type; int /*<<< orphan*/  srx_service; int /*<<< orphan*/  srx_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  srx ;
struct TYPE_4__ {int /*<<< orphan*/  sk_allocation; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CM_PORT ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_RXRPC ; 
 int /*<<< orphan*/  CM_SERVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  afs_async_calls ; 
 int /*<<< orphan*/  afs_incoming_calls ; 
 int /*<<< orphan*/  afs_rx_interceptor ; 
 struct socket* afs_socket ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct socket*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC10 (struct socket*) ; 

int FUNC11(void)
{
	struct sockaddr_rxrpc srx;
	struct socket *socket;
	int ret;

	FUNC0("");

	FUNC8(&afs_incoming_calls);

	afs_async_calls = FUNC2("kafsd");
	if (!afs_async_calls) {
		FUNC1(" = -ENOMEM [wq]");
		return -ENOMEM;
	}

	ret = FUNC9(AF_RXRPC, SOCK_DGRAM, PF_INET, &socket);
	if (ret < 0) {
		FUNC3(afs_async_calls);
		FUNC1(" = %d [socket]", ret);
		return ret;
	}

	socket->sk->sk_allocation = GFP_NOFS;

	/* bind the callback manager's address to make this a server socket */
	srx.srx_family			= AF_RXRPC;
	srx.srx_service			= CM_SERVICE;
	srx.transport_type		= SOCK_DGRAM;
	srx.transport_len		= sizeof(srx.transport.sin);
	srx.transport.sin.sin_family	= AF_INET;
	srx.transport.sin.sin_port	= FUNC4(AFS_CM_PORT);
	FUNC6(&srx.transport.sin.sin_addr, 0,
	       sizeof(srx.transport.sin.sin_addr));

	ret = FUNC5(socket, (struct sockaddr *) &srx, sizeof(srx));
	if (ret < 0) {
		FUNC10(socket);
		FUNC1(" = %d [bind]", ret);
		return ret;
	}

	FUNC7(socket, afs_rx_interceptor);

	afs_socket = socket;
	FUNC1(" = 0");
	return 0;
}