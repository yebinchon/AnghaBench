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
struct socket {TYPE_1__* sk; } ;
struct rds_tcp_connection {scalar_t__ t_orig_data_ready; int /*<<< orphan*/  t_orig_state_change; int /*<<< orphan*/  t_orig_write_space; struct rds_connection* conn; struct socket* t_sock; int /*<<< orphan*/  t_list_item; } ;
struct rds_connection {struct rds_tcp_connection* c_transport_data; } ;
struct TYPE_2__ {scalar_t__ sk_data_ready; scalar_t__ sk_user_data; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_state_change; int /*<<< orphan*/  sk_write_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ rds_tcp_data_ready ; 
 scalar_t__ rds_tcp_listen_data_ready ; 
 int /*<<< orphan*/  rds_tcp_state_change ; 
 int /*<<< orphan*/  rds_tcp_tc_count ; 
 int /*<<< orphan*/  rds_tcp_tc_list ; 
 int /*<<< orphan*/  rds_tcp_tc_list_lock ; 
 int /*<<< orphan*/  rds_tcp_write_space ; 
 int /*<<< orphan*/  FUNC1 (char*,struct socket*,struct rds_tcp_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct socket *sock, struct rds_connection *conn)
{
	struct rds_tcp_connection *tc = conn->c_transport_data;

	FUNC1("setting sock %p callbacks to tc %p\n", sock, tc);
	FUNC4(&sock->sk->sk_callback_lock);

	/* done under the callback_lock to serialize with write_space */
	FUNC2(&rds_tcp_tc_list_lock);
	FUNC0(&tc->t_list_item, &rds_tcp_tc_list);
	rds_tcp_tc_count++;
	FUNC3(&rds_tcp_tc_list_lock);

	/* accepted sockets need our listen data ready undone */
	if (sock->sk->sk_data_ready == rds_tcp_listen_data_ready)
		sock->sk->sk_data_ready = sock->sk->sk_user_data;

	tc->t_sock = sock;
	tc->conn = conn;
	tc->t_orig_data_ready = sock->sk->sk_data_ready;
	tc->t_orig_write_space = sock->sk->sk_write_space;
	tc->t_orig_state_change = sock->sk->sk_state_change;

	sock->sk->sk_user_data = conn;
	sock->sk->sk_data_ready = rds_tcp_data_ready;
	sock->sk->sk_write_space = rds_tcp_write_space;
	sock->sk->sk_state_change = rds_tcp_state_change;

	FUNC5(&sock->sk->sk_callback_lock);
}