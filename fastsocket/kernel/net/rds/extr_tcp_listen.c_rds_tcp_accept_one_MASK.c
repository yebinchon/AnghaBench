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
struct socket {TYPE_2__* sk; TYPE_1__* ops; int /*<<< orphan*/  type; } ;
struct rds_connection {int dummy; } ;
struct inet_sock {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_protocol; int /*<<< orphan*/  sk_type; int /*<<< orphan*/  sk_family; } ;
struct TYPE_3__ {int (* accept ) (struct socket*,struct socket*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rds_connection*) ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int FUNC1 (struct rds_connection*) ; 
 int /*<<< orphan*/  RDS_CONN_CONNECTING ; 
 int /*<<< orphan*/  RDS_CONN_DOWN ; 
 scalar_t__ RDS_CONN_UP ; 
 struct inet_sock* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct rds_connection* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_connection*) ; 
 scalar_t__ FUNC6 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct rds_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_tcp_transport ; 
 int /*<<< orphan*/  FUNC11 (struct socket*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_tcp_connect_raced ; 
 int /*<<< orphan*/  s_tcp_listen_closed_stale ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC14 (struct socket*) ; 
 int FUNC15 (struct socket*,struct socket*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct socket *sock)
{
	struct socket *new_sock = NULL;
	struct rds_connection *conn;
	int ret;
	struct inet_sock *inet;

	ret = FUNC13(sock->sk->sk_family, sock->sk->sk_type,
			       sock->sk->sk_protocol, &new_sock);
	if (ret)
		goto out;

	new_sock->type = sock->type;
	new_sock->ops = sock->ops;
	ret = sock->ops->accept(sock, new_sock, O_NONBLOCK);
	if (ret < 0)
		goto out;

	FUNC11(new_sock);

	inet = FUNC2(new_sock->sk);

	FUNC12("accepted tcp %pI4:%u -> %pI4:%u\n",
		 &inet->saddr, FUNC3(inet->sport),
		 &inet->daddr, FUNC3(inet->dport));

	conn = FUNC4(inet->saddr, inet->daddr, &rds_tcp_transport,
			       GFP_KERNEL);
	if (FUNC0(conn)) {
		ret = FUNC1(conn);
		goto out;
	}

	/*
	 * see the comment above rds_queue_delayed_reconnect()
	 */
	if (!FUNC7(conn, RDS_CONN_DOWN, RDS_CONN_CONNECTING)) {
		if (FUNC6(conn) == RDS_CONN_UP)
			FUNC10(s_tcp_listen_closed_stale);
		else
			FUNC10(s_tcp_connect_raced);
		FUNC5(conn);
		ret = 0;
		goto out;
	}

	FUNC9(new_sock, conn);
	FUNC8(conn);
	new_sock = NULL;
	ret = 0;

out:
	if (new_sock)
		FUNC14(new_sock);
	return ret;
}