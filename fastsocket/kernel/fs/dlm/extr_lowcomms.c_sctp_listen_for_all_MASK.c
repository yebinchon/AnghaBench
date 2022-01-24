#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subscribe ;
struct socket {TYPE_2__* ops; TYPE_1__* sk; } ;
struct sockaddr_storage {int dummy; } ;
struct sctp_event_subscribe {int sctp_data_io_event; int sctp_association_event; int sctp_send_failure_event; int sctp_shutdown_event; int sctp_partial_delivery_event; } ;
struct connection {struct socket* sock; int /*<<< orphan*/  connect_action; int /*<<< orphan*/  rx_action; } ;
typedef  int /*<<< orphan*/  localaddr ;
typedef  int /*<<< orphan*/  bufsize ;
struct TYPE_9__ {int /*<<< orphan*/  ci_tcp_port; } ;
struct TYPE_8__ {int /*<<< orphan*/  ss_family; } ;
struct TYPE_7__ {int (* listen ) (struct socket*,int) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  sk_data_ready; struct connection* sk_user_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IPPROTO_SCTP ; 
 int NEEDED_RMEM ; 
 int /*<<< orphan*/  SCTP_EVENTS ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SOL_SCTP ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUFFORCE ; 
 int FUNC0 (struct connection*,struct sockaddr_storage*,int,int) ; 
 TYPE_5__ dlm_config ; 
 TYPE_3__** dlm_local_addr ; 
 int dlm_local_count ; 
 int FUNC1 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  lowcomms_data_ready ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_storage*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_storage*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_event_subscribe*,int /*<<< orphan*/ ,int) ; 
 struct connection* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  receive_from_sock ; 
 int /*<<< orphan*/  sctp_init_assoc ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 
 int FUNC9 (struct socket*,int) ; 

__attribute__((used)) static int FUNC10(void)
{
	struct socket *sock = NULL;
	struct sockaddr_storage localaddr;
	struct sctp_event_subscribe subscribe;
	int result = -EINVAL, num = 1, i, addr_len;
	struct connection *con = FUNC6(0, GFP_NOFS);
	int bufsize = NEEDED_RMEM;

	if (!con)
		return -ENOMEM;

	FUNC2("Using SCTP for communications");

	result = FUNC7(dlm_local_addr[0]->ss_family, SOCK_SEQPACKET,
				  IPPROTO_SCTP, &sock);
	if (result < 0) {
		FUNC2("Can't create comms socket, check SCTP is loaded");
		goto out;
	}

	/* Listen for events */
	FUNC5(&subscribe, 0, sizeof(subscribe));
	subscribe.sctp_data_io_event = 1;
	subscribe.sctp_association_event = 1;
	subscribe.sctp_send_failure_event = 1;
	subscribe.sctp_shutdown_event = 1;
	subscribe.sctp_partial_delivery_event = 1;

	result = FUNC1(sock, SOL_SOCKET, SO_RCVBUFFORCE,
				 (char *)&bufsize, sizeof(bufsize));
	if (result)
		FUNC2("Error increasing buffer space on socket %d", result);

	result = FUNC1(sock, SOL_SCTP, SCTP_EVENTS,
				   (char *)&subscribe, sizeof(subscribe));
	if (result < 0) {
		FUNC2("Failed to set SCTP_EVENTS on socket: result=%d",
			  result);
		goto create_delsock;
	}

	/* Init con struct */
	sock->sk->sk_user_data = con;
	con->sock = sock;
	con->sock->sk->sk_data_ready = lowcomms_data_ready;
	con->rx_action = receive_from_sock;
	con->connect_action = sctp_init_assoc;

	/* Bind to all interfaces. */
	for (i = 0; i < dlm_local_count; i++) {
		FUNC4(&localaddr, dlm_local_addr[i], sizeof(localaddr));
		FUNC3(&localaddr, dlm_config.ci_tcp_port, &addr_len);

		result = FUNC0(con, &localaddr, addr_len, num);
		if (result)
			goto create_delsock;
		++num;
	}

	result = sock->ops->listen(sock, 5);
	if (result < 0) {
		FUNC2("Can't set socket listening");
		goto create_delsock;
	}

	return 0;

create_delsock:
	FUNC8(sock);
	con->sock = NULL;
out:
	return result;
}