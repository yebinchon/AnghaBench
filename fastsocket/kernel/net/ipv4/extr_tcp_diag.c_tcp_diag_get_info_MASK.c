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
struct tcp_sock {scalar_t__ snd_una; scalar_t__ write_seq; scalar_t__ copied_seq; scalar_t__ rcv_nxt; } ;
struct tcp_info {int dummy; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
struct inet_diag_msg {scalar_t__ idiag_wqueue; scalar_t__ idiag_rqueue; } ;

/* Variables and functions */
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct tcp_info*) ; 
 struct tcp_sock* FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, struct inet_diag_msg *r,
			      void *_info)
{
	const struct tcp_sock *tp = FUNC1(sk);
	struct tcp_info *info = _info;

	if (sk->sk_state == TCP_LISTEN) {
		r->idiag_rqueue = sk->sk_ack_backlog;
		r->idiag_wqueue = sk->sk_max_ack_backlog;
	} else {
		r->idiag_rqueue = tp->rcv_nxt - tp->copied_seq;
		r->idiag_wqueue = tp->write_seq - tp->snd_una;
	}
	if (info != NULL)
		FUNC0(sk, info);
}