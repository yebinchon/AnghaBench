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
struct tcp_sock {int nonagle; int /*<<< orphan*/  write_seq; } ;
struct tcp_skb_cb {scalar_t__ sacked; int /*<<< orphan*/  flags; int /*<<< orphan*/  end_seq; int /*<<< orphan*/  seq; } ;
struct sock {int /*<<< orphan*/  sk_wmem_queued; } ;
struct sk_buff {scalar_t__ truesize; scalar_t__ csum; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCPCB_FLAG_ACK ; 
 int TCP_NAGLE_PUSH ; 
 struct tcp_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static inline void FUNC5(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct tcp_skb_cb *tcb = FUNC0(skb);

	skb->csum    = 0;
	tcb->seq     = tcb->end_seq = tp->write_seq;
	tcb->flags   = TCPCB_FLAG_ACK;
	tcb->sacked  = 0;
	FUNC2(skb);
	FUNC3(sk, skb);
	sk->sk_wmem_queued += skb->truesize;
	FUNC1(sk, skb->truesize);
	if (tp->nonagle & TCP_NAGLE_PUSH)
		tp->nonagle &= ~TCP_NAGLE_PUSH;
}