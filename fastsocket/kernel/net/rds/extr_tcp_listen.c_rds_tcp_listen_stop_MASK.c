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
struct sock {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; int /*<<< orphan*/ * sk_data_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct socket* rds_tcp_listen_sock ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	struct socket *sock = rds_tcp_listen_sock;
	struct sock *sk;

	if (!sock)
		return;

	sk = sock->sk;

	/* serialize with and prevent further callbacks */
	FUNC1(sk);
	FUNC4(&sk->sk_callback_lock);
	if (sk->sk_user_data) {
		sk->sk_data_ready = sk->sk_user_data;
		sk->sk_user_data = NULL;
	}
	FUNC5(&sk->sk_callback_lock);
	FUNC2(sk);

	/* wait for accepts to stop and close the socket */
	FUNC0(rds_wq);
	FUNC3(sock);
	rds_tcp_listen_sock = NULL;
}