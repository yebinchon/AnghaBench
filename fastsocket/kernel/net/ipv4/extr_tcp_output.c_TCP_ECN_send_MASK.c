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
struct tcp_sock {int ecn_flags; int /*<<< orphan*/  snd_nxt; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_6__ {int /*<<< orphan*/  seq; } ;
struct TYPE_5__ {int /*<<< orphan*/  gso_type; } ;
struct TYPE_4__ {int cwr; int ece; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  SKB_GSO_TCP_ECN ; 
 int TCP_ECN_DEMAND_CWR ; 
 int TCP_ECN_OK ; 
 int TCP_ECN_QUEUE_CWR ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static inline void FUNC7(struct sock *sk, struct sk_buff *skb,
				int tcp_header_len)
{
	struct tcp_sock *tp = FUNC6(sk);

	if (tp->ecn_flags & TCP_ECN_OK) {
		/* Not-retransmitted data segment: set ECT and inject CWR. */
		if (skb->len != tcp_header_len &&
		    !FUNC3(FUNC2(skb)->seq, tp->snd_nxt)) {
			FUNC1(sk);
			if (tp->ecn_flags & TCP_ECN_QUEUE_CWR) {
				tp->ecn_flags &= ~TCP_ECN_QUEUE_CWR;
				FUNC5(skb)->cwr = 1;
				FUNC4(skb)->gso_type |= SKB_GSO_TCP_ECN;
			}
		} else {
			/* ACK or retransmitted segment: clear ECT|CE */
			FUNC0(sk);
		}
		if (tp->ecn_flags & TCP_ECN_DEMAND_CWR)
			FUNC5(skb)->ece = 1;
	}
}