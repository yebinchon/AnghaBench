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
struct socket {TYPE_2__* sk; TYPE_1__* ops; int /*<<< orphan*/  type; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connection {int nodeid; int /*<<< orphan*/  sock_mutex; int /*<<< orphan*/  rwork; int /*<<< orphan*/  flags; void* rx_action; struct socket* sock; struct connection* othercon; int /*<<< orphan*/  swork; } ;
typedef  int /*<<< orphan*/  peeraddr ;
struct TYPE_6__ {int /*<<< orphan*/  ss_family; } ;
struct TYPE_5__ {struct connection* sk_user_data; } ;
struct TYPE_4__ {int (* accept ) (struct socket*,struct socket*,int /*<<< orphan*/ ) ;scalar_t__ (* getname ) (struct socket*,struct sockaddr*,int*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CF_IS_OTHERCON ; 
 int /*<<< orphan*/  CF_READ_PENDING ; 
 int EAGAIN ; 
 int ECONNABORTED ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,struct connection*) ; 
 scalar_t__ FUNC2 (struct sockaddr_storage*,int*) ; 
 int /*<<< orphan*/  con_cache ; 
 TYPE_3__** dlm_local_addr ; 
 struct connection* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_storage*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct connection* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  process_recv_sockets ; 
 int /*<<< orphan*/  process_send_sockets ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* receive_from_sock ; 
 int /*<<< orphan*/  recv_workqueue ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC15 (struct socket*) ; 
 int FUNC16 (struct socket*,struct socket*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct socket*,struct sockaddr*,int*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct connection *con)
{
	int result;
	struct sockaddr_storage peeraddr;
	struct socket *newsock;
	int len;
	int nodeid;
	struct connection *newcon;
	struct connection *addcon;

	FUNC6(&peeraddr, 0, sizeof(peeraddr));
	result = FUNC14(dlm_local_addr[0]->ss_family, SOCK_STREAM,
				  IPPROTO_TCP, &newsock);
	if (result < 0)
		return -ENOMEM;

	FUNC8(&con->sock_mutex, 0);

	result = -ENOTCONN;
	if (con->sock == NULL)
		goto accept_err;

	newsock->type = con->sock->type;
	newsock->ops = con->sock->ops;

	result = con->sock->ops->accept(con->sock, newsock, O_NONBLOCK);
	if (result < 0)
		goto accept_err;

	/* Get the connected socket's peer */
	FUNC6(&peeraddr, 0, sizeof(peeraddr));
	if (newsock->ops->getname(newsock, (struct sockaddr *)&peeraddr,
				  &len, 2)) {
		result = -ECONNABORTED;
		goto accept_err;
	}

	/* Get the new node's NODEID */
	FUNC5(&peeraddr, 0, &len);
	if (FUNC2(&peeraddr, &nodeid)) {
		FUNC4("connect from non cluster node");
		FUNC15(newsock);
		FUNC9(&con->sock_mutex);
		return -1;
	}

	FUNC4("got connection from %d", nodeid);

	/*  Check to see if we already have a connection to this node. This
	 *  could happen if the two nodes initiate a connection at roughly
	 *  the same time and the connections cross on the wire.
	 *  In this case we store the incoming one in "othercon"
	 */
	newcon = FUNC10(nodeid, GFP_NOFS);
	if (!newcon) {
		result = -ENOMEM;
		goto accept_err;
	}
	FUNC8(&newcon->sock_mutex, 1);
	if (newcon->sock) {
		struct connection *othercon = newcon->othercon;

		if (!othercon) {
			othercon = FUNC3(con_cache, GFP_NOFS);
			if (!othercon) {
				FUNC4("failed to allocate incoming socket");
				FUNC9(&newcon->sock_mutex);
				result = -ENOMEM;
				goto accept_err;
			}
			othercon->nodeid = nodeid;
			othercon->rx_action = receive_from_sock;
			FUNC7(&othercon->sock_mutex);
			FUNC0(&othercon->swork, process_send_sockets);
			FUNC0(&othercon->rwork, process_recv_sockets);
			FUNC13(CF_IS_OTHERCON, &othercon->flags);
		}
		if (!othercon->sock) {
			newcon->othercon = othercon;
			othercon->sock = newsock;
			newsock->sk->sk_user_data = othercon;
			FUNC1(newsock, othercon);
			addcon = othercon;
		}
		else {
			FUNC11("Extra connection from node %d attempted\n", nodeid);
			result = -EAGAIN;
			FUNC9(&newcon->sock_mutex);
			goto accept_err;
		}
	}
	else {
		newsock->sk->sk_user_data = newcon;
		newcon->rx_action = receive_from_sock;
		FUNC1(newsock, newcon);
		addcon = newcon;
	}

	FUNC9(&newcon->sock_mutex);

	/*
	 * Add it to the active queue in case we got data
	 * beween processing the accept adding the socket
	 * to the read_sockets list
	 */
	if (!FUNC18(CF_READ_PENDING, &addcon->flags))
		FUNC12(recv_workqueue, &addcon->rwork);
	FUNC9(&con->sock_mutex);

	return 0;

accept_err:
	FUNC9(&con->sock_mutex);
	FUNC15(newsock);

	if (result != -EAGAIN)
		FUNC4("error accepting connection from node: %d", result);
	return result;
}