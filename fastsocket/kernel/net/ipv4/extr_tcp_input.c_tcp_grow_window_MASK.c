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
struct tcp_sock {scalar_t__ rcv_ssthresh; scalar_t__ window_clamp; int advmss; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  truesize; } ;
struct TYPE_3__ {int quick; } ;
struct TYPE_4__ {TYPE_1__ icsk_ack; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct sk_buff*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  tcp_memory_pressure ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, struct sk_buff *skb)
{
	struct tcp_sock *tp = FUNC3(sk);

	/* Check #1 */
	if (tp->rcv_ssthresh < tp->window_clamp &&
	    (int)tp->rcv_ssthresh < FUNC4(sk) &&
	    !tcp_memory_pressure) {
		int incr;

		/* Check #2. Increase window, if skb with such overhead
		 * will fit to rcvbuf in future.
		 */
		if (FUNC5(skb->truesize) <= skb->len)
			incr = 2 * tp->advmss;
		else
			incr = FUNC0(sk, skb);

		if (incr) {
			tp->rcv_ssthresh = FUNC2(tp->rcv_ssthresh + incr,
					       tp->window_clamp);
			FUNC1(sk)->icsk_ack.quick |= 1;
		}
	}
}