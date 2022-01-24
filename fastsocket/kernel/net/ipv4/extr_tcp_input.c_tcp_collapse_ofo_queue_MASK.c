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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {int /*<<< orphan*/  out_of_order_queue; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  end_seq; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ *,struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk)
{
	struct tcp_sock *tp = FUNC7(sk);
	struct sk_buff *skb = FUNC3(&tp->out_of_order_queue);
	struct sk_buff *head;
	u32 start, end;

	if (skb == NULL)
		return;

	start = FUNC0(skb)->seq;
	end = FUNC0(skb)->end_seq;
	head = skb;

	for (;;) {
		struct sk_buff *next = NULL;

		if (!FUNC4(&tp->out_of_order_queue, skb))
			next = FUNC5(&tp->out_of_order_queue, skb);
		skb = next;

		/* Segment is terminated when we see gap or when
		 * we are at the end of all the queue. */
		if (!skb ||
		    FUNC1(FUNC0(skb)->seq, end) ||
		    FUNC2(FUNC0(skb)->end_seq, start)) {
			FUNC6(sk, &tp->out_of_order_queue,
				     head, skb, start, end);
			head = skb;
			if (!skb)
				break;
			/* Start new segment */
			start = FUNC0(skb)->seq;
			end = FUNC0(skb)->end_seq;
		} else {
			if (FUNC2(FUNC0(skb)->seq, start))
				start = FUNC0(skb)->seq;
			if (FUNC1(FUNC0(skb)->end_seq, end))
				end = FUNC0(skb)->end_seq;
		}
	}
}