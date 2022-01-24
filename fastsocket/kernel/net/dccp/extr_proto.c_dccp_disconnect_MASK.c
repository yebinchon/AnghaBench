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
struct sock {int sk_state; int sk_userlocks; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;scalar_t__ sk_shutdown; int /*<<< orphan*/ * sk_send_head; int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; void* sk_err; } ;
struct inet_sock {scalar_t__ num; scalar_t__ dport; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_bind_hash; scalar_t__ icsk_backoff; } ;

/* Variables and functions */
 int const DCCP_CLOSED ; 
 int const DCCP_LISTEN ; 
 int const DCCP_REQUESTING ; 
 int /*<<< orphan*/  DCCP_RESET_CODE_ABORTED ; 
 void* ECONNRESET ; 
 int SOCK_BINDADDR_LOCK ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int const) ; 
 struct inet_connection_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 struct inet_sock* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 

int FUNC15(struct sock *sk, int flags)
{
	struct inet_connection_sock *icsk = FUNC8(sk);
	struct inet_sock *inet = FUNC12(sk);
	int err = 0;
	const int old_state = sk->sk_state;

	if (old_state != DCCP_CLOSED)
		FUNC7(sk, DCCP_CLOSED);

	/*
	 * This corresponds to the ABORT function of RFC793, sec. 3.8
	 * TCP uses a RST segment, DCCP a Reset packet with Code 2, "Aborted".
	 */
	if (old_state == DCCP_LISTEN) {
		FUNC10(sk);
	} else if (FUNC5(old_state)) {
		FUNC6(sk, DCCP_RESET_CODE_ABORTED);
		sk->sk_err = ECONNRESET;
	} else if (old_state == DCCP_REQUESTING)
		sk->sk_err = ECONNRESET;

	FUNC4(sk);

	FUNC3(&sk->sk_receive_queue);
	FUNC3(&sk->sk_write_queue);
	if (sk->sk_send_head != NULL) {
		FUNC1(sk->sk_send_head);
		sk->sk_send_head = NULL;
	}

	inet->dport = 0;

	if (!(sk->sk_userlocks & SOCK_BINDADDR_LOCK))
		FUNC11(sk);

	sk->sk_shutdown = 0;
	FUNC13(sk, SOCK_DONE);

	icsk->icsk_backoff = 0;
	FUNC9(sk);
	FUNC2(sk);

	FUNC0(inet->num && !icsk->icsk_bind_hash);

	sk->sk_error_report(sk);
	return err;
}