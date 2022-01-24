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
typedef  void* u32 ;
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int ato; void* lrcvtime; } ;
struct inet_connection_sock {int icsk_rto; TYPE_1__ icsk_ack; } ;

/* Variables and functions */
 int TCP_ATO_MIN ; 
 int /*<<< orphan*/  FUNC0 (struct tcp_sock*,struct sk_buff*) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC8 (struct sock*) ; 
 void* tcp_time_stamp ; 

__attribute__((used)) static void FUNC9(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC8(sk);
	struct inet_connection_sock *icsk = FUNC1(sk);
	u32 now;

	FUNC2(sk);

	FUNC6(sk, skb);

	FUNC7(tp);

	now = tcp_time_stamp;

	if (!icsk->icsk_ack.ato) {
		/* The _first_ data packet received, initialize
		 * delayed ACK engine.
		 */
		FUNC5(sk);
		icsk->icsk_ack.ato = TCP_ATO_MIN;
	} else {
		int m = now - icsk->icsk_ack.lrcvtime;

		if (m <= TCP_ATO_MIN / 2) {
			/* The fastest case is the first. */
			icsk->icsk_ack.ato = (icsk->icsk_ack.ato >> 1) + TCP_ATO_MIN / 2;
		} else if (m < icsk->icsk_ack.ato) {
			icsk->icsk_ack.ato = (icsk->icsk_ack.ato >> 1) + m;
			if (icsk->icsk_ack.ato > icsk->icsk_rto)
				icsk->icsk_ack.ato = icsk->icsk_rto;
		} else if (m > icsk->icsk_rto) {
			/* Too long gap. Apparently sender failed to
			 * restart window, so that we send ACKs quickly.
			 */
			FUNC5(sk);
			FUNC3(sk);
		}
	}
	icsk->icsk_ack.lrcvtime = now;

	FUNC0(tp, skb);

	if (skb->len >= 128)
		FUNC4(sk, skb);
}