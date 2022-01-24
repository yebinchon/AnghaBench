#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct sock {struct rxrpc_local* sk_user_data; int /*<<< orphan*/  sk_error_report; int /*<<< orphan*/  sk_data_ready; } ;
struct TYPE_7__ {int transport_len; int /*<<< orphan*/  transport; int /*<<< orphan*/  transport_type; } ;
struct rxrpc_local {TYPE_2__* socket; int /*<<< orphan*/  link; TYPE_1__ srx; } ;
typedef  int /*<<< orphan*/  sa_family_t ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_8__ {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_MTU_DISCOVER ; 
 int IP_PMTUDISC_DO ; 
 int /*<<< orphan*/  IP_RECVERR ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int /*<<< orphan*/  SOL_IP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct rxrpc_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (TYPE_2__*,struct sockaddr*,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxrpc_UDP_error_report ; 
 int /*<<< orphan*/  rxrpc_data_ready ; 
 int /*<<< orphan*/  rxrpc_local_lock ; 
 int /*<<< orphan*/  rxrpc_locals ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct rxrpc_local *local)
{
	struct sock *sock;
	int ret, opt;

	FUNC1("%p{%d}", local, local->srx.transport_type);

	/* create a socket to represent the local endpoint */
	ret = FUNC7(PF_INET, local->srx.transport_type, IPPROTO_UDP,
			       &local->socket);
	if (ret < 0) {
		FUNC2(" = %d [socket]", ret);
		return ret;
	}

	/* if a local address was supplied then bind it */
	if (local->srx.transport_len > sizeof(sa_family_t)) {
		FUNC0("bind");
		ret = FUNC3(local->socket,
				  (struct sockaddr *) &local->srx.transport,
				  local->srx.transport_len);
		if (ret < 0) {
			FUNC0("bind failed");
			goto error;
		}
	}

	/* we want to receive ICMP errors */
	opt = 1;
	ret = FUNC4(local->socket, SOL_IP, IP_RECVERR,
				(char *) &opt, sizeof(opt));
	if (ret < 0) {
		FUNC0("setsockopt failed");
		goto error;
	}

	/* we want to set the don't fragment bit */
	opt = IP_PMTUDISC_DO;
	ret = FUNC4(local->socket, SOL_IP, IP_MTU_DISCOVER,
				(char *) &opt, sizeof(opt));
	if (ret < 0) {
		FUNC0("setsockopt failed");
		goto error;
	}

	FUNC9(&rxrpc_local_lock);
	FUNC6(&local->link, &rxrpc_locals);
	FUNC10(&rxrpc_local_lock);

	/* set the socket up */
	sock = local->socket->sk;
	sock->sk_user_data	= local;
	sock->sk_data_ready	= rxrpc_data_ready;
	sock->sk_error_report	= rxrpc_UDP_error_report;
	FUNC2(" = 0");
	return 0;

error:
	FUNC5(local->socket, SHUT_RDWR);
	local->socket->sk->sk_user_data = NULL;
	FUNC8(local->socket);
	local->socket = NULL;

	FUNC2(" = %d", ret);
	return ret;
}