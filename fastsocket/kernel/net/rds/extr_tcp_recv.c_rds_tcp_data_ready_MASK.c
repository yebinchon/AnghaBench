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
struct sock {void (* sk_data_ready ) (struct sock*,int) ;int /*<<< orphan*/  sk_callback_lock; struct rds_connection* sk_user_data; } ;
struct rds_tcp_connection {void (* t_orig_data_ready ) (struct sock*,int) ;} ;
struct rds_connection {int /*<<< orphan*/  c_recv_w; struct rds_tcp_connection* c_transport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KM_SOFTIRQ0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC3 (char*,struct sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_tcp_data_ready_calls ; 

void FUNC6(struct sock *sk, int bytes)
{
	void (*ready)(struct sock *sk, int bytes);
	struct rds_connection *conn;
	struct rds_tcp_connection *tc;

	FUNC3("data ready sk %p bytes %d\n", sk, bytes);

	FUNC4(&sk->sk_callback_lock);
	conn = sk->sk_user_data;
	if (!conn) { /* check for teardown race */
		ready = sk->sk_data_ready;
		goto out;
	}

	tc = conn->c_transport_data;
	ready = tc->t_orig_data_ready;
	FUNC2(s_tcp_data_ready_calls);

	if (FUNC1(conn, GFP_ATOMIC, KM_SOFTIRQ0) == -ENOMEM)
		FUNC0(rds_wq, &conn->c_recv_w, 0);
out:
	FUNC5(&sk->sk_callback_lock);
	ready(sk, bytes);
}