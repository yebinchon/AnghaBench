#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {void (* sk_write_space ) (struct sock*) ;int sk_sndbuf; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_wmem_alloc; struct rds_connection* sk_user_data; } ;
struct rds_tcp_connection {void (* t_orig_write_space ) (struct sock*) ;struct rds_tcp_connection* t_last_seen_una; } ;
struct rds_connection {int /*<<< orphan*/  c_send_w; struct rds_tcp_connection* c_transport_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rds_connection*,struct rds_tcp_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_tcp_is_acked ; 
 struct rds_tcp_connection* FUNC3 (struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC5 (char*,struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_tcp_write_space_calls ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct sock *sk)
{
	void (*write_space)(struct sock *sk);
	struct rds_connection *conn;
	struct rds_tcp_connection *tc;

	FUNC6(&sk->sk_callback_lock);
	conn = sk->sk_user_data;
	if (!conn) {
		write_space = sk->sk_write_space;
		goto out;
	}

	tc = conn->c_transport_data;
	FUNC5("write_space for tc %p\n", tc);
	write_space = tc->t_orig_write_space;
	FUNC4(s_tcp_write_space_calls);

	FUNC5("tcp una %u\n", FUNC3(tc));
	tc->t_last_seen_una = FUNC3(tc);
	FUNC2(conn, FUNC3(tc), rds_tcp_is_acked);

        if ((FUNC0(&sk->sk_wmem_alloc) << 1) <= sk->sk_sndbuf)
		FUNC1(rds_wq, &conn->c_send_w, 0);

out:
	FUNC7(&sk->sk_callback_lock);

	/*
	 * write_space is only called when data leaves tcp's send queue if
	 * SOCK_NOSPACE is set.  We set SOCK_NOSPACE every time we put
	 * data in tcp's send queue because we use write_space to parse the
	 * sequence numbers and notice that rds messages have been fully
	 * received.
	 *
	 * tcp's write_space clears SOCK_NOSPACE if the send queue has more
	 * than a certain amount of space. So we need to set it again *after*
	 * we call tcp's write_space or else we might only get called on the
	 * first of a series of incoming tcp acks.
	 */
	write_space(sk);

	if (sk->sk_socket)
		FUNC8(SOCK_NOSPACE, &sk->sk_socket->flags);
}